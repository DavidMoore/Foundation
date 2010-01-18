using System;
using System.Collections.Generic;
using System.Reflection;

namespace Foundation.Reflection
{
    public interface ITypeDiscovery
    {
        /// <summary>
        /// Filters types that implement the specified contract or base type
        /// </summary>
        /// <typeparam name="TContractType"></typeparam>
        /// <returns></returns>
        IEnumerable<Type> Implementing<TContractType>();

        /// <summary>
        /// Adds some additional assemblies to inspect for types
        /// </summary>
        /// <param name="assemblies"></param>
        /// <returns></returns>
        ITypeDiscovery AlsoInAssemblies(params Assembly[] assemblies);

        /// <summary>
        /// Filters types to those that are annotated with the specified attribute
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        IEnumerable<Type> WithAttribute<T>();
    }
}