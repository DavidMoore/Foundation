using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Security.Permissions;
using System.Security.Policy;

namespace Foundation.Reflection
{
    /// <summary>
    /// Scans a directory for dll files, enumerating them into assemblies
    /// </summary>
    /// <remarks>
    /// Assemblies are loaded into a new application domain with ReflectionOnlyLoad.  The application domain is destroyed
    /// once the assemblies have been discovered.
    /// </remarks>
    [SecurityPermission(SecurityAction.LinkDemand)]
    [SecurityPermission(SecurityAction.InheritanceDemand)]
    public class DirectoryAssemblyDiscovery : IAssemblyDiscovery
    {
        const string AssemblyFileFilter = "*.dll";

        AppDomain childDomain;

        public DirectoryAssemblyDiscovery(DirectoryInfo directory, bool reflectionOnly)
        {
            this.directory = directory;
            this.reflectionOnly = reflectionOnly;
        }

        public IEnumerable<Assembly> Assemblies
        {
            get
            {
                return InnerLoad();
            }
        }

        /// <summary>
        /// Directory to search for assemblies
        /// </summary>
        readonly DirectoryInfo directory;

        readonly bool reflectionOnly;

        /// <summary>
        /// Drives the main logic of building the child domain and searching for the assemblies.
        /// </summary>
        IEnumerable<Assembly> InnerLoad()
        {
            var loader = GetLoader();

            loader.Directory = directory;

            return directory.GetFiles(AssemblyFileFilter)
                .Select( loader.LoadAssembly);
        }

        InnerAssemblyLoader GetLoader()
        {
            if( !reflectionOnly ) return new InnerAssemblyLoader();

            childDomain = BuildChildDomain(AppDomain.CurrentDomain);

            var loaderType = typeof(InnerAssemblyLoader);

            var loader =
                (InnerAssemblyLoader)
                childDomain.CreateInstanceFrom(loaderType.Assembly.Location, loaderType.FullName)
                .Unwrap();

            return loader;
        }


        /// <summary>
        /// Creates a new child domain and copies the evidence from a parent domain.
        /// </summary>
        /// <param name="parentDomain">The parent domain.</param>
        /// <returns>The new child domain.</returns>
        /// <remarks>
        /// Grabs the <paramref name="parentDomain"/> evidence and uses it to construct the new
        /// <see cref="AppDomain"/> because in a ClickOnce execution environment, creating an
        /// <see cref="AppDomain"/> will by default pick up the partial trust environment of 
        /// the AppLaunch.exe, which was the root executable. The AppLaunch.exe does a 
        /// create domain and applies the evidence from the ClickOnce manifests to 
        /// create the domain that the application is actually executing in. This will 
        /// need to be Full Trust for Composite Application Library applications.
        /// </remarks>
        protected virtual AppDomain BuildChildDomain(AppDomain parentDomain)
        {
            Evidence evidence = new Evidence(parentDomain.Evidence);
            AppDomainSetup setup = parentDomain.SetupInformation;
            return AppDomain.CreateDomain("DiscoveryRegion", evidence, setup);
        }

        private class InnerAssemblyLoader : MarshalByRefObject, IDisposable
        {
            public InnerAssemblyLoader()
            {
                AppDomain.CurrentDomain.ReflectionOnlyAssemblyResolve += CurrentDomainOnReflectionOnlyAssemblyResolve;
            }

            /// <summary>
            /// The directory to load assemblies from
            /// </summary>
            public DirectoryInfo Directory { get; set; }

            internal Assembly LoadAssembly(FileInfo file)
            {
                return Assembly.ReflectionOnlyLoadFrom(file.FullName);
            }

            Assembly CurrentDomainOnReflectionOnlyAssemblyResolve(object sender, ResolveEventArgs args)
            {
                return OnReflectionOnlyResolve(args);
            }

            private Assembly OnReflectionOnlyResolve(ResolveEventArgs args)
            {
                Assembly loadedAssembly = AppDomain.CurrentDomain.ReflectionOnlyGetAssemblies().FirstOrDefault(
                    asm => string.Equals(asm.FullName, args.Name, StringComparison.OrdinalIgnoreCase));
                if (loadedAssembly != null)
                {
                    return loadedAssembly;
                }
                
                AssemblyName assemblyName = new AssemblyName(args.Name);
                string dependentAssemblyFilename = Path.Combine(Directory.FullName, assemblyName.Name + ".dll");

                return File.Exists(dependentAssemblyFilename)
                    ? Assembly.ReflectionOnlyLoadFrom(dependentAssemblyFilename)
                    : Assembly.ReflectionOnlyLoad(args.Name);
            }

            /// <summary>
            /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
            /// </summary>
            /// <filterpriority>2</filterpriority>
            public void Dispose()
            {
                AppDomain.CurrentDomain.ReflectionOnlyAssemblyResolve -= CurrentDomainOnReflectionOnlyAssemblyResolve;
            }
        }

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        /// <filterpriority>2</filterpriority>
        public void Dispose()
        {
            Dispose(true);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!disposing) return;
            if( childDomain != null) AppDomain.Unload(childDomain);
        }
    }
}