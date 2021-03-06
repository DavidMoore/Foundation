﻿using System;

namespace Foundation.Services.Registration
{
    /// <summary>
    /// Registers a service using a lifestyle of <see cref="LifestyleType.Singleton"/>
    /// </summary>
    [AttributeUsage(AttributeTargets.Class, AllowMultiple = true, Inherited = false)]
    public sealed class RegisterComponentAsSingletonAttribute : RegisterComponentAttribute
    {
        /// <summary>
        /// Registers this service with a lifestyle of <see cref="LifestyleType.Singleton"/>
        /// </summary>
        public RegisterComponentAsSingletonAttribute() : this(null) {}

        /// <summary>
        /// Registers this service with a lifestyle of <see cref="LifestyleType.Singleton"/>
        /// </summary>
        /// <param name="serviceContract">The contract type to register the service for</param>
        public RegisterComponentAsSingletonAttribute(Type serviceContract) : base(serviceContract, LifestyleType.Singleton) {}
    }
}