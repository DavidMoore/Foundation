using System;
using System.Linq;
using System.Reflection;
using Foundation.Services;
using Foundation.Services.Unity;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services
{
    [TestClass]
    public class ServiceManagerTests
    {
        [TestInitialize]
        public void Setup()
        {
            ServiceManager.Reset();
        }

        [TestMethod]
        public void Initialize_gets_first_IServiceManager_implementation_loaded_in_domain()
        {
            ServiceManager.Initialize();
        }

        [TestMethod, ExpectedException(typeof(InvalidOperationException))]//, ExpectedMessage = "Cannot initialize the service manager more than once!")]
        public void Initialize_throws_InvalidOperationException_if_called_more_than_once()
        {
            ServiceManager.Initialize<UnityServiceManagerAdapter>();
            ServiceManager.Initialize();
        }

        [TestMethod]
        public void Initialize_accepts_type_of_IServiceManager_implementation_to_use()
        {
            ServiceManager.Initialize<UnityServiceManagerAdapter>();
        }
    }

    public static class ServiceManager
    {
        static IServiceManager serviceManager;

        public static IServiceManager Current
        {
            get
            {
                return serviceManager;
            }
        }

        public static void Initialize<TServiceManager>()  where TServiceManager : IServiceManager
        {
            Initialize(typeof(TServiceManager));
        }

        public static void Initialize(Type serviceManagerType)
        {
            serviceManager = Activator.CreateInstance(serviceManagerType) as IServiceManager;
        }

        public static void Initialize()
        {
            if( serviceManager != null) throw new InvalidOperationException("Cannot initialize the service manager more than once!");
            
            var implementations = GetTypes.ThatImplement(typeof (IServiceManager), Assembly.GetExecutingAssembly(), checkReferencedAssemblies: true);

            if( implementations.Count == 0) throw new InvalidOperationException("No IServiceManager implementations found");
         
            Initialize(implementations.First());
        }

        /// <summary>
        /// Use to reset the container by setting it to null, allowing
        /// <see cref="Initialize()"/> to be called again
        /// </summary>
        internal static void Reset()
        {
            if (serviceManager == null) return;
            serviceManager.Dispose();
            serviceManager = null;
        }
    }
}