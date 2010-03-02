using System;
using System.Diagnostics.CodeAnalysis;

namespace Foundation.Services
{
    /// <summary>
    /// Extension methods for <see cref="IServiceManager"/>
    /// </summary>
    public static class ServiceManagerExtensions
    {
        /// <summary>
        /// Returns true if the specified <typeparamref name="T"/> is registered in the container; otherwise false
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static bool IsServiceRegistered<T>(this IServiceManager serviceManager)
        {
            if (serviceManager == null) throw new ArgumentNullException("serviceManager");
            return serviceManager.IsServiceRegistered(typeof(T));
        }

        /// <summary>
        /// Registers an instance in the service container
        /// </summary>
        /// <typeparam name="TServiceType"></typeparam>
        /// <param name="serviceManager"></param>
        /// <param name="instance"></param>
        /// <returns></returns>
        public static IServiceManager AddInstance<TServiceType>(this IServiceManager serviceManager, TServiceType instance)
        {
            if (serviceManager == null) throw new ArgumentNullException("serviceManager");
            return serviceManager.AddInstance(typeof (TServiceType), instance);
        }

        /// <summary>
        /// Registers an instance in the container, which
        /// will act as a singleton
        /// </summary>
        /// <param name="serviceManager"></param>
        /// <param name="serviceType">The type of service to register the instance for</param>
        /// <param name="instance">The actual instance</param>
        /// <returns></returns>
        public static IServiceManager AddInstance(this IServiceManager serviceManager, Type serviceType, object instance)
        {
            if (serviceManager == null) throw new ArgumentNullException("serviceManager");
            return serviceManager.AddInstance(serviceType, instance, null);
        }

        /// <summary>
        /// Registers a service with a singleton lifestyle by default
        /// </summary>
        /// <param name="serviceManager"></param>
        /// <param name="fromType"></param>
        /// <param name="toType"></param>
        public static IServiceManager AddService(this IServiceManager serviceManager, Type fromType, Type toType)
        {
            if (serviceManager == null) throw new ArgumentNullException("serviceManager");
            return serviceManager.AddService(fromType, toType, null, LifestyleType.Singleton);
        }

        /// <summary>
        /// Registers a service with a transient lifestyle
        /// </summary>
        /// <typeparam name="TContract">The contract type</typeparam>
        /// <typeparam name="TService">The implementing service type</typeparam>
        public static IServiceManager AddService<TContract, TService>(this IServiceManager serviceManager)
        {
            if (serviceManager == null) throw new ArgumentNullException("serviceManager");
            return serviceManager.AddService(typeof (TContract), typeof (TService));
        }

        /// <summary>
        /// Registers a service with the specified lifestyle
        /// </summary>
        /// <typeparam name="TContract">The contract type</typeparam>
        /// <typeparam name="TService">The implementing service type</typeparam>
        /// <param name="serviceManager"></param>
        /// <param name="lifestyle">The lifestyle to use for the service</param>
        public static IServiceManager AddService<TContract, TService>(this IServiceManager serviceManager, LifestyleType lifestyle)
        {
            if (serviceManager == null) throw new ArgumentNullException("serviceManager");
            return serviceManager.AddService(typeof (TContract), typeof (TService), null, lifestyle);
        }

        /// <summary>
        /// Resolves the specified service type
        /// </summary>
        /// <typeparam name="TService">The type of the service (e.g. the contract type)</typeparam>
        /// <returns></returns>
        [SuppressMessage("Microsoft.Design", "CA1011:ConsiderPassingBaseTypesAsParameters")]
        public static TService GetService<TService>(this IServiceManager serviceManager)
        {
            if (serviceManager == null) throw new ArgumentNullException("serviceManager");
            var serviceType = typeof (TService);
            var value = serviceManager.GetService(serviceType);
            if( value is TService ) return (TService) value;
            throw new ServiceResolutionFailedException(serviceType, null);
        }
    }
}
