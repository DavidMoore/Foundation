using System;
using System.ComponentModel;
using System.Windows.Forms;

namespace Foundation.Services
{
    /// <summary>
    /// Adapts an <see cref="IServiceManager"/> to the <see cref="IContainer"/> interface
    /// </summary>
    [RegisterComponent(typeof(IContainer))]
    class ServiceManagerContainerAdapter : Container
    {
        static readonly Type AmbientPropertiesType = typeof (AmbientProperties);
        static readonly Type ServiceManagerType = typeof (IServiceManager);
        readonly IServiceManager container;
        readonly Type containerType;

        /// <summary>
        /// Exposes a <see cref="IContainer"/> interface for a wrapped <see cref="IServiceManager"/>
        /// </summary>
        /// <param name="container">The parent container</param>
        /// <exception cref="ArgumentNullException">when <paramref name="container"/> is null</exception>
        public ServiceManagerContainerAdapter(IServiceManager container)
        {
            if (container == null) throw new ArgumentNullException("container");
            this.container = container;
            containerType = container.GetType();
        }

        /// <summary>
        /// Gets the service object of the specified type, if it is available.
        /// </summary>
        /// <returns>
        /// An <see cref="T:System.Object"/> implementing the requested service, or null if the service cannot be resolved.
        /// </returns>
        /// <param name="serviceType">The <see cref="T:System.Type"/> of the service to retrieve.</param>
        protected override object GetService(Type serviceType)
        {
            return InnerGetService(serviceType);
        }

        /// <summary>
        /// We have this method so that we can mark it internal and unit test it (which
        /// we can't do for the overridden <see cref="GetService"/> method)
        /// </summary>
        /// <param name="serviceType"></param>
        /// <returns></returns>
        internal object InnerGetService(Type serviceType)
        {
            if (serviceType == null) throw new ArgumentNullException("serviceType");

            if (serviceType.IsAssignableFrom(containerType)) return container;

            if (serviceType.Equals(ServiceManagerType)) return container;

            object service = base.GetService(serviceType);

            if (service != null || serviceType.Equals(AmbientPropertiesType)) return service;

            return container.GetService(serviceType);
        }
    }
}