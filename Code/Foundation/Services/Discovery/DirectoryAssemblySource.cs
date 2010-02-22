using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;

namespace Foundation.Services.Discovery
{
    /// <summary>
    /// Enumerates the assemblies in a directory, using reflection-only load in a child domain
    /// to prevent polluting the current application domain
    /// </summary>
    public class DirectoryAssemblySource : IAssemblySource
    {
        const string AssemblyFileExtension = ".dll";

        const string AssemblyFileSearchPattern = "*" + AssemblyFileExtension;
        
        /// <summary>
        /// Creates a new assembly source for the specified directory
        /// </summary>
        /// <param name="directory"></param>
        /// <exception cref="ArgumentNullException"> if <paramref name="directory"/> is <c>null</c></exception>
        public DirectoryAssemblySource(DirectoryInfo directory)
        {
            if (directory == null) throw new ArgumentNullException("directory");
            Directory = directory;
        }

        /// <summary>
        /// Initializes a new <see cref="DirectoryAssemblySource"/>
        /// </summary>
        /// <param name="directory">The path to the directory</param>
        /// <exception cref="ArgumentNullException"> if <paramref name="directory"/> is <code>null</code></exception>
        public DirectoryAssemblySource(string directory)
        {
            if (directory == null) throw new ArgumentNullException("directory");
            if (directory.Trim().Length.Equals(0)) throw new ArgumentException("The directory path cannot be empty!", "directory");
            Directory = new DirectoryInfo(directory);
        }

        public DirectoryInfo Directory { get; private set; }

        public IEnumerable<Assembly> Assemblies
        {
            get { return InnerLoad(); }
        }

        IEnumerable<Assembly> InnerLoad()
        {
            if (!Directory.Exists)
                throw new DirectoryNotFoundException(string.Format(CultureInfo.CurrentCulture,
                                                                   "The directory specified for assembly discovery doesn't exist: '{0}'",
                                                                   Directory.FullName));

            var childDomain = DiscoverTypes.BuildChildDomain(AppDomain.CurrentDomain);

            try
            {
                ResolveEventHandler resolveEventHandler = (sender, args) => OnReflectionOnlyResolve(args, Directory);

                Type loaderType = typeof(AssemblyLoader);

                var loader = (AssemblyLoader)childDomain.CreateInstanceFrom(loaderType.Assembly.Location, loaderType.FullName)
                                                            .Unwrap();

                foreach (Assembly assembly in Directory.GetFiles(AssemblyFileSearchPattern)
                    .Select(loader.LoadAssembly)
                    .Where(assembly => assembly != null))
                {
                    yield return assembly;
                }

                AppDomain.CurrentDomain.ReflectionOnlyAssemblyResolve -= resolveEventHandler;
            }
            finally
            {
                AppDomain.Unload(childDomain);
            }
        }

        static Assembly OnReflectionOnlyResolve(ResolveEventArgs args, DirectoryInfo directory)
        {
            var loadedAssembly = AppDomain.CurrentDomain.ReflectionOnlyGetAssemblies().FirstOrDefault(
                asm => string.Equals(asm.FullName, args.Name, StringComparison.OrdinalIgnoreCase));
            if (loadedAssembly != null)
            {
                return loadedAssembly;
            }
            var assemblyName = new AssemblyName(args.Name);
            var dependentAssemblyFilename = Path.Combine(directory.FullName, assemblyName.Name + AssemblyFileExtension);

            return File.Exists(dependentAssemblyFilename)
                       ? Assembly.ReflectionOnlyLoadFrom(dependentAssemblyFilename)
                       : Assembly.ReflectionOnlyLoad(args.Name);
        }

        class AssemblyLoader : MarshalByRefObject
        {
            public Assembly LoadAssembly(FileSystemInfo input)
            {
                try
                {
                    return Assembly.ReflectionOnlyLoadFrom(input.FullName);
                }
                catch (BadImageFormatException)
                {
                    return null;
                }
            }
        }
    }
}