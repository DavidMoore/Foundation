using System;
using System.Collections.Generic;

namespace Foundation.Services.Discovery
{
    /// <summary>
    /// Enumerates types based on set criteria
    /// </summary>
    public interface ITypeSource {

        /// <summary>
        /// Returns all public, non-abstract types that have the specified attribute
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        IEnumerable<Type> WithAttribute<T>();

        /// <summary>
        /// Returns all public, non-abstract types
        /// </summary>
        /// <returns></returns>
        IEnumerable<Type> AllTypes();

        /// <summary>
        /// Returns all public, non-abstract types that implement the specified contract/base type
        /// </summary>
        /// <typeparam name="T">The contract or base type to look for classes that respectively implement or extend</typeparam>
        /// <returns></returns>
        IEnumerable<Type> Implementing<T>();

        /// <summary>
        /// Returns all public, non-abstract types that implement the specified contract/base type
        /// </summary>
        /// <param name="baseType">The contract or base type to look for classes that respectively implement or extend</param>
        /// <returns></returns>
        IEnumerable<Type> Implementing(Type baseType);
    }
}