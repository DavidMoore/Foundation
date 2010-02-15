using System;

namespace Foundation.Services
{
    /// <summary>
    /// Marks a class to be registered in the <see cref="IServiceManager"/>
    /// </summary>
    [AttributeUsage(AttributeTargets.Class, AllowMultiple = true, Inherited = false)]
    public class RegisterComponentAttribute : Attribute
    {
        /// <summary>
        /// Registers the service with a lifestyle of <see cref="LifestyleType.Transient"/>
        /// and for the contract of the top-most interface on the class
        /// </summary>
        public RegisterComponentAttribute() : this(null) {}

        /// <summary>
        /// Registers the service with the specified lifestyle
        /// </summary>
        /// <param name="lifestyle">The lifestyle to register the service for</param>
        public RegisterComponentAttribute(LifestyleType lifestyle) : this(null, lifestyle) {}

        /// <summary>
        /// Registers the service with a lifestyle of <see cref="LifestyleType.Transient"/>
        /// and for the contract specified by <paramref name="serviceContract"/>
        /// </summary>
        /// <param name="serviceContract">The contract type to register this service for</param>
        public RegisterComponentAttribute(Type serviceContract) : this(serviceContract, LifestyleType.Transient) {}

        /// <summary>
        /// Registers the service with the specified lifestyle and contract type
        /// </summary>
        /// <param name="serviceContract">The contract type to register this service for</param>
        /// <param name="lifestyle">The lifestyle to register the service for</param>
        public RegisterComponentAttribute(Type serviceContract, LifestyleType lifestyle)
        {
            ServiceContract = serviceContract;
            Lifestyle = lifestyle;
        }

        /// <summary>
        /// The type of the service contract to register this service implementation for.
        /// </summary>
        /// <remarks>Optional. If null, the top-most interface the service implements will be used</remarks>
        public Type ServiceContract { get; set; }

        /// <summary>
        /// The lifestyle to register the component with.
        /// </summary>
        public LifestyleType Lifestyle { get; set; }
    }
}