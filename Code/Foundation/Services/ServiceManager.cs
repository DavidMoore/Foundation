using System;
using System.IO;
using System.Linq;
using System.Reflection;
using Foundation.Services.Discovery;
using Foundation.Services.Registration;

namespace Foundation.Services
{
    /// <summary>
    /// Singleton that holds a <see cref="IServiceManager"/>
    /// </summary>
    public static class ServiceManager
    {
        /// <summary>
        /// Automatically initializes the service manager the first discovered
        /// implementation of <see cref="IServiceManager"/> in the application directory.
        /// </summary>
        public static void Initialize()
        {
            var directoryPath = AppDomain.CurrentDomain.SetupInformation.PrivateBinPath;

            var serviceManagers = DiscoverTypes.FromDirectory(directoryPath)
                .Implementing<IServiceManager>().ToList();

            if (serviceManagers.Count == 0)
                throw new InvalidOperationException(
                    "Couldn't locate any type implementing IServiceManager in any assemblies in " + directoryPath);

            if (serviceManagers.Count > 1)
                throw new InvalidOperationException(
                    string.Format("There is more than one type implementing IServiceManager in {0}: {1}", directoryPath,
                    string.Join(", ", serviceManagers.Select(type => type.AssemblyQualifiedName).ToArray() )  ));

            var manager = Activator.CreateInstance(serviceManagers[0]) as IServiceManager;

            Initialize(manager);
        }

        /// <summary>
        /// Initializes the singleton with the passed service manager.
        /// </summary>
        /// <param name="manager"></param>
        public static void Initialize(IServiceManager manager)
        {
            if (manager == null) throw new ArgumentNullException("manager");
            instance = manager;
        }

        /// <summary>
        /// Automatically discovers and registers any types marked up with
        /// <see cref="RegisterComponentAttribute"/> or its derivatives.
        /// </summary>
        /// <param name="path">The path to probe for assemblies.</param>
        public static void AutoRegistration(string path)
        {
            var types = DiscoverTypes.FromDirectory(path).WithAttribute<RegisterComponentAttribute>().ToList();
            var registration = new ServiceRegistration(Instance);
            registration.RegisterServices( types );
        }

        static IServiceManager instance;

        /// <summary>
        /// The singleton service manager for this application.
        /// </summary>
        public static IServiceManager Instance
        {
            get
            {
                if( instance == null) Initialize();
                return instance;
            }
        }
    }
}