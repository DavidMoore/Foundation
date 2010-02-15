using System;
using System.Collections.Generic;
using System.Linq;

namespace Foundation.Services.Discovery
{
    /// <summary>
    /// Enumerates types using set criteria, from a passed <see cref="IAssemblySource"/>
    /// </summary>
    public class TypeSource : ITypeSource
    {
        readonly IAssemblySource assemblySource;

        /// <summary>
        /// Creates a new <see cref="TypeSource"/> using the passed <paramref name="assemblySource"/>
        /// as the source of assemblies to enumerate types from
        /// </summary>
        /// <param name="assemblySource"></param>
        public TypeSource(IAssemblySource assemblySource)
        {
            this.assemblySource = assemblySource;
        }

        /// <summary>
        /// Returns all public, non-abstract types that have the specified attribute
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public IEnumerable<Type> WithAttribute<T>()
        {
            var attributeType = typeof (T);
            return AllTypes()
                .Where(type => ReflectUtils.HasAttribute(type, attributeType));
        }

        /// <summary>
        /// Returns all public, non-abstract types
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Type> AllTypes()
        {
            return assemblySource
                .Assemblies
                .SelectMany(assembly => assembly.GetTypes()
                                            .Where(type => !type.IsAbstract));
        }

        /// <summary>
        /// Returns all public, non-abstract types that implement the specified contract/base type
        /// </summary>
        /// <typeparam name="T">The contract or base type to look for classes that respectively implement or extend</typeparam>
        /// <returns></returns>
        public IEnumerable<Type> Implementing<T>()
        {
            return Implementing(typeof (T));
        }

        /// <summary>
        /// Returns all public, non-abstract types that implement the specified contract/base type
        /// </summary>
        /// <param name="baseType">The contract or base type to look for classes that respectively implement or extend</param>
        /// <returns></returns>
        public IEnumerable<Type> Implementing(Type baseType)
        {
            return AllTypes().Where(
                type =>
                ReflectUtils.Implements(type, baseType));
        }
    }
}