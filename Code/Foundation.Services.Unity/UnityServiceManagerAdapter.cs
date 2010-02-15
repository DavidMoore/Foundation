using System;
using System.Collections.Generic;
using System.ComponentModel;
using Microsoft.Practices.ServiceLocation;
using Microsoft.Practices.Unity;

namespace Foundation.Services.Unity
{
    /// <summary>
    /// Defines a <seealso cref="IUnityContainer"/> adapter for
    /// the <see cref="IServiceManager"/> interface
    /// </summary>
    public class UnityServiceManagerAdapter : IServiceManager
    {
        readonly IUnityContainer unityContainer;

        /// <summary>
        /// Creates a new <see cref="UnityContainer"/> and then adapts it by creating a new
        /// <see cref="UnityServiceManagerAdapter"/> to wrap it
        /// </summary>
        public UnityServiceManagerAdapter() : this(new UnityContainer()){}

        /// <summary>
        /// Adapts the passed <see cref="UnityContainer"/> to the <see cref="IServiceManager"/> interface
        /// </summary>
        /// <param name="unityContainer">The container to adapt</param>
        public UnityServiceManagerAdapter(IUnityContainer unityContainer)
        {
            this.unityContainer = unityContainer;

            unityContainer.AddNewExtension<UnityIsTypeRegisteredExtension>();

            if (!this.IsServiceRegistered<IServiceLocator>()) this.AddInstance<IServiceLocator>(this);
            if (!this.IsServiceRegistered<IServiceManager>()) this.AddInstance<IServiceManager>(this);
            if (!this.IsServiceRegistered<IUnityContainer>()) this.AddInstance(unityContainer);
        }

        /// <summary>
        /// Returns true if the specified <paramref name="type"/> is registered in the container; otherwise false
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public bool IsServiceRegistered(Type type)
        {
            return unityContainer.IsTypeRegistered(type);
        }

        /// <summary>
        /// Registers a service with the specified lifestyle
        /// </summary>
        /// <param name="fromType">The contract type</param>
        /// <param name="toType">The implementing service type</param>
        /// <param name="name">The name of the service (<c>null</c> for none)</param>
        /// <param name="lifestyle">The lifestyle to use for the service</param>
        public IServiceManager AddService(Type fromType, Type toType, string name, LifestyleType lifestyle)
        {
            if (fromType == null) throw new ArgumentNullException("fromType");
            if (toType == null) throw new ArgumentNullException("toType");

            LifetimeManager lifetimeManager = null;

            switch (lifestyle)
            {
                case LifestyleType.Transient:
                    break;
                case LifestyleType.Singleton:
                    lifetimeManager = new ContainerControlledLifetimeManager();
                    break;
                default:
                    throw new ArgumentOutOfRangeException("lifestyle");
            }

            if (lifetimeManager == null)
            {
                unityContainer.RegisterType(fromType, toType, name);
            }
            else
            {
                unityContainer.RegisterType(fromType, toType, name, lifetimeManager);
            }

            return this;
        }

        /// <summary>
        /// Adds a service instance using the passed name
        /// </summary>
        /// <param name="component"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        public IServiceManager AddComponent(IComponent component, string name)
        {
            unityContainer.RegisterInstance(name, component);
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
            unityContainer.RegisterInstance(serviceType, name, instance);
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
            var child = new UnityServiceManagerAdapter(unityContainer.CreateChildContainer());
            child.AddInstance<IServiceManager>(child);
            return child;
        }

        /// <summary>
        /// Resolves the specified service type
        /// </summary>
        /// <typeparam name="TService">The type of the service (e.g. the contract type)</typeparam>
        /// <returns></returns>
        public TService GetService<TService>()
        {
            return GetInstance<TService>(null);
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
            return GetInstance(serviceType);
        }

        public object GetInstance(Type serviceType)
        {
            return GetInstance(serviceType, null);
        }

        public TService GetInstance<TService>()
        {
            return GetInstance<TService>(null);
        }

        public TService GetInstance<TService>(string key)
        {
            return (TService)GetInstance(typeof(TService), key);
        }

        public object GetInstance(Type serviceType, string key)
        {
            try
            {
                return unityContainer.Resolve(serviceType, key);
            }
            catch (ResolutionFailedException rfe)
            {
                throw new ServiceResolutionFailedException(serviceType, rfe);
            }
//            catch (ActivationException ae)
//            {
//                throw new ServiceResolutionFailedException(serviceType, ae);
//            }
        }

        public IEnumerable<object> GetAllInstances(Type serviceType)
        {
            try{

            return unityContainer.ResolveAll(serviceType);
            }
            catch (ResolutionFailedException rfe)
            {
                throw new ServiceResolutionFailedException(serviceType, rfe);
            }
        }
        
        public IEnumerable<TService> GetAllInstances<TService>()
        {
            try
            {
                return unityContainer.ResolveAll<TService>();
            }
            catch (ResolutionFailedException rfe)
            {
                throw new ServiceResolutionFailedException(typeof(TService), rfe);
            }
        }
    }
}