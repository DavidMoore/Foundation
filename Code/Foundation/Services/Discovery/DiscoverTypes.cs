using System;
using System.IO;
using System.Security.Policy;

namespace Foundation.Services.Discovery
{
    public class DiscoverTypes
    {
        public static ITypeSource FromDirectory(DirectoryInfo directory)
        {
            return new TypeSource(new DirectoryAssemblySource(directory));
        }
        
        public static ITypeSource FromDirectory(string currentDirectory)
        {
            return new TypeSource( new DirectoryAssemblySource(new DirectoryInfo(currentDirectory)) );
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
        public static AppDomain BuildChildDomain(AppDomain parentDomain)
        {
            Evidence evidence = new Evidence(parentDomain.Evidence);
            AppDomainSetup setup = parentDomain.SetupInformation;
            return AppDomain.CreateDomain("DiscoveryRegion", evidence, setup);
        }
    }
}


