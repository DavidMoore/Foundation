using System;
using System.ComponentModel.Design;

namespace Foundation.Services
{
    /// <summary>
    /// Exposes the <see cref="IServiceContainer"/> interface over a wrapper <see cref="IServiceManager"/>
    /// </summary>
    [RegisterComponent(typeof(IServiceContainer))]
    public class ServiceManagerServiceContainerAdapter : ServiceContainer
    {
        readonly IServiceContainer serviceContainer;
        readonly Type thisType;
        
        /// <summary>
        /// Constructs a new <see cref="ServiceManagerServiceContainerAdapter"/> by
        /// wrapping the passed <see cref="IServiceManager"/>
        /// </summary>
        /// <param name="container">The container to wrap</param>
        public ServiceManagerServiceContainerAdapter(IServiceManager container)
        {
            thisType = GetType();
            serviceContainer = new ServiceContainer(container);
            container.AddInstance<IServiceContainer>(this);
        }

        /// <summary>
        /// Gets the service object of the specified type.
        /// </summary>
        /// <returns>
        /// A service object of type <paramref name="serviceType"/>.
        ///                     -or- 
        ///                 null if there is no service object of type <paramref name="serviceType"/>.
        /// </returns>
        /// <param name="serviceType">An object that specifies the type of service object to get. 
        ///                 </param><filterpriority>2</filterpriority>
        public override object GetService(Type serviceType)
        {
            return serviceType.IsAssignableFrom(thisType) ? this : serviceContainer.GetService(serviceType);
        }
        
        /// <summary>
        /// Adds the specified service to the service container, and optionally promotes the service to any parent service containers.
        /// </summary>
        /// <param name="serviceType">The type of service to add. 
        ///                 </param><param name="serviceInstance">An instance of the service type to add. This object must implement or inherit from the type indicated by the <paramref name="serviceType"/> parameter. 
        ///                 </param><param name="promote">true to promote this request to any parent service containers; otherwise, false. 
        ///                 </param>
        public override void AddService(Type serviceType, object serviceInstance, bool promote)
        {
            serviceContainer.AddService(serviceType, serviceInstance, promote);
        }
        
        /// <summary>
        /// Adds the specified service to the service container, and optionally promotes the service to parent service containers.
        /// </summary>
        /// <param name="serviceType">The type of service to add. 
        ///                 </param><param name="callback">A callback object that is used to create the service. This allows a service to be declared as available, but delays the creation of the object until the service is requested. 
        ///                 </param><param name="promote">true to promote this request to any parent service containers; otherwise, false. 
        ///                 </param>
        public override void AddService(Type serviceType, ServiceCreatorCallback callback, bool promote)
        {
            serviceContainer.AddService(serviceType, callback, promote);
        }
        
        /// <summary>
        /// Removes the specified service type from the service container, and optionally promotes the service to parent service containers.
        /// </summary>
        /// <param name="serviceType">The type of service to remove. 
        ///                 </param><param name="promote">true to promote this request to any parent service containers; otherwise, false. 
        ///                 </param>
        public override void RemoveService(Type serviceType, bool promote)
        {
            serviceContainer.RemoveService(serviceType, promote);
        }
    }
}