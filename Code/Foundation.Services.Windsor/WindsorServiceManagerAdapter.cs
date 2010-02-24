﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using Castle.Windsor;

namespace Foundation.Services.Windsor
{
    /// <summary>
    /// Class that adapts an <see cref="IWindsorContainer"/> to the <see cref="IServiceManager"/> interface
    /// </summary>
    public class WindsorServiceManagerAdapter : IServiceManager
    {
        readonly IWindsorContainer container;

        public WindsorServiceManagerAdapter()
        {
            container = new WindsorContainer();
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
            return container.GetService(serviceType);
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
            return container.Resolve(key, serviceType);
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
            return container.ResolveAll(serviceType).Cast<object>();
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
            return container.Kernel.HasComponent(type);
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
            container.AddComponentLifeStyle(name, fromType, toType, ConvertLifestyleType(lifestyle));
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
            container.Kernel.AddComponentInstance(name, component);
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
            container.Kernel.AddComponentInstance(name, serviceType, instance);
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
            container.AddChildContainer(child.container);
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
            if (!disposing || container == null) return;
            container.Dispose();
        }
    }
}