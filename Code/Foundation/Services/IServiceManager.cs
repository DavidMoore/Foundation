using System;
using System.ComponentModel;
using Microsoft.Practices.ServiceLocation;

namespace Foundation.Services
{
    /// <summary>
    /// Offers service location and registration methods
    /// </summary>
    public interface IServiceManager : IServiceLocator, IDisposable
    {
        /// <summary>
        /// Returns true if the specified <paramref name="type"/> is registered in the container; otherwise false
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        bool IsServiceRegistered(Type type);

        /// <summary>
        /// Registers a service with the specified lifestyle
        /// </summary>
        /// <param name="fromType">The contract type</param>
        /// <param name="toType">The implementing service type</param>
        /// <param name="name">The optional name for the service. Set as <c>null</c> to not specify a name.</param>
        /// <param name="lifestyle">The lifestyle to use for the service</param>
        IServiceManager AddService(Type fromType, Type toType, string name, LifestyleType lifestyle);
        
        /// <summary>
        /// Adds a service instance using the passed name
        /// </summary>
        /// <param name="component"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        IServiceManager AddComponent(IComponent component, string name);

        /// <summary>
        /// Registers an instance in the container, which
        /// will act as a singleton, with an optional name
        /// </summary>
        /// <param name="serviceType">The type of service to register the instance for</param>
        /// <param name="instance">The actual instance</param>
        /// <param name="name">The optional name of the instance. This can be <c>null</c> or <see cref="string.Empty"/> for no name.</param>
        /// <returns></returns>
        IServiceManager AddInstance(Type serviceType, object instance, string name);

        /// <summary>
        /// Returns a child container that uses this container as a parent container.
        /// <para>Services are registered and resolved in the child container.</para>
        /// <para>If a component cannot be resolved in the child container, it will then look in the
        /// parent container.</para>
        /// </summary>
        /// <returns></returns>
        IServiceManager CreateChildContainer();
    }
}