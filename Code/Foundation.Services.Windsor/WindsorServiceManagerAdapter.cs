using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using Castle.Windsor;
using Component = Castle.MicroKernel.Registration.Component;

namespace Foundation.Services.Windsor
{
    /// <summary>
    /// Class that adapts an <see cref="IWindsorContainer"/> to the <see cref="IServiceManager"/> interface
    /// </summary>
    public class WindsorServiceManagerAdapter : IServiceManager
    {
        /// <summary>
        /// Gets the Windsor container that this service manager adapts.
        /// </summary>
        public IWindsorContainer Container { get; private set; }

        public WindsorServiceManagerAdapter()
        {
            Container = new WindsorContainer();
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
        public object GetService(Type serviceType)
        {
            return Container.GetService(serviceType);
        }

        /// <summary>
        /// Get an instance of the given <paramref name="serviceType"/>.
        /// </summary>
        /// <param name="serviceType">Type of object requested.</param><exception cref="T:Microsoft.Practices.ServiceLocation.ActivationException">if there is an error resolving
        ///             the service instance.</exception>
        /// <returns>
        /// The requested service instance.
        /// </returns>
        public object GetInstance(Type serviceType)
        {
            return GetInstance(serviceType, null);
        }

        /// <summary>
        /// Get an instance of the given named <paramref name="serviceType"/>.
        /// </summary>
        /// <param name="serviceType">Type of object requested.</param><param name="key">Name the object was registered with.</param><exception cref="T:Microsoft.Practices.ServiceLocation.ActivationException">if there is an error resolving
        ///             the service instance.</exception>
        /// <returns>
        /// The requested service instance.
        /// </returns>
        public object GetInstance(Type serviceType, string key)
        {
            return key == null ? Container.Resolve(serviceType) : Container.Resolve(key, serviceType);
        }

        /// <summary>
        /// Get all instances of the given <paramref name="serviceType"/> currently
        ///             registered in the container.
        /// </summary>
        /// <param name="serviceType">Type of object requested.</param><exception cref="T:Microsoft.Practices.ServiceLocation.ActivationException">if there is are errors resolving
        ///             the service instance.</exception>
        /// <returns>
        /// A sequence of instances of the requested <paramref name="serviceType"/>.
        /// </returns>
        public IEnumerable<object> GetAllInstances(Type serviceType)
        {
            return Container.ResolveAll(serviceType).Cast<object>();
        }

        /// <summary>
        /// Get an instance of the given <typeparamref name="TService"/>.
        /// </summary>
        /// <typeparam name="TService">Type of object requested.</typeparam><exception cref="T:Microsoft.Practices.ServiceLocation.ActivationException">if there is are errors resolving
        ///             the service instance.</exception>
        /// <returns>
        /// The requested service instance.
        /// </returns>
        public TService GetInstance<TService>()
        {
            return GetInstance<TService>(null);
        }

        /// <summary>
        /// Get an instance of the given named <typeparamref name="TService"/>.
        /// </summary>
        /// <typeparam name="TService">Type of object requested.</typeparam><param name="key">Name the object was registered with.</param><exception cref="T:Microsoft.Practices.ServiceLocation.ActivationException">if there is are errors resolving
        ///             the service instance.</exception>
        /// <returns>
        /// The requested service instance.
        /// </returns>
        public TService GetInstance<TService>(string key)
        {
            return (TService) GetInstance(typeof (TService), key);
        }

        /// <summary>
        /// Get all instances of the given <typeparamref name="TService"/> currently
        ///             registered in the container.
        /// </summary>
        /// <typeparam name="TService">Type of object requested.</typeparam><exception cref="T:Microsoft.Practices.ServiceLocation.ActivationException">if there is are errors resolving
        ///             the service instance.</exception>
        /// <returns>
        /// A sequence of instances of the requested <typeparamref name="TService"/>.
        /// </returns>
        public IEnumerable<TService> GetAllInstances<TService>()
        {
            return GetAllInstances(typeof (TService)).Cast<TService>();
        }

        /// <summary>
        /// Returns true if the specified <paramref name="type"/> is registered in the container; otherwise false
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public bool IsServiceRegistered(Type type)
        {
            return Container.Kernel.HasComponent(type);
        }

        /// <summary>
        /// Registers a service with the specified lifestyle
        /// </summary>
        /// <param name="fromType">The contract type</param>
        /// <param name="toType">The implementing service type</param>
        /// <param name="name">The optional name for the service. Set as <c>null</c> to not specify a name.</param>
        /// <param name="lifestyle">The lifestyle to use for the service</param>
        public IServiceManager AddService(Type fromType, Type toType, string name, LifestyleType lifestyle)
        {
            var registration = Component.For(fromType).ImplementedBy(toType).LifeStyle.Is(ConvertLifestyleType(lifestyle));
            if(!string.IsNullOrWhiteSpace(name)) registration = registration.Named(name);
            Container.Register(registration);
            return this;
        }

        static Castle.Core.LifestyleType ConvertLifestyleType(LifestyleType lifestyle)
        {
            switch (lifestyle)
            {
                case LifestyleType.Transient:
                    return Castle.Core.LifestyleType.Transient;
                case LifestyleType.Singleton:
                    return Castle.Core.LifestyleType.Singleton;
                case LifestyleType.PerWebRequest:
                    return Castle.Core.LifestyleType.PerWebRequest;
                default:
                    throw new ArgumentOutOfRangeException("lifestyle");
            }
        }

        /// <summary>
        /// Adds a service instance using the passed name
        /// </summary>
        /// <param name="component"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        public IServiceManager AddComponent(IComponent component, string name)
        {
            Container.Register(Component.For(component.GetType()).Named(name).Instance(component));
            return this;
        }

        /// <summary>
        /// Registers an instance in the container, which
        /// will act as a singleton, with an optional name
        /// </summary>
        /// <param name="serviceType">The type of service to register the instance for</param>
        /// <param name="instance">The actual instance</param>
        /// <param name="name">The optional name of the instance. This can be <c>null</c> or <see cref="string.Empty"/> for no name.</param>
        /// <returns></returns>
        public IServiceManager AddInstance(Type serviceType, object instance, string name)
        {
            var registration = Component.For(serviceType).Instance(instance);
            if( !string.IsNullOrEmpty(name) ) registration = registration.Named(name);
            Container.Register(registration);
            return this;
        }

        /// <summary>
        /// Returns a child container that uses this container as a parent container.
        /// <para>Services are registered and resolved in the child container.</para>
        /// <para>If a component cannot be resolved in the child container, it will then look in the
        /// parent container.</para>
        /// </summary>
        /// <returns></returns>
        public IServiceManager CreateChildContainer()
        {
            var child = new WindsorServiceManagerAdapter();
            Container.AddChildContainer(child.Container);
            return child;
        }

        /// <summary>
        /// Disposes the <see cref="IWindsorContainer"/> this class wraps
        /// </summary>
        /// <filterpriority>2</filterpriority>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        void Dispose(bool disposing)
        {
            if (!disposing || Container == null) return;
            Container.Dispose();
        }
    }
}