using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

namespace Foundation.Reflection
{
    public class TypeDiscovery : ITypeDiscovery
    {
        readonly IAssemblyDiscovery assemblySource;
        IEnumerable<Assembly> additionalAssemblies;

        /// <summary>
        /// Creates a new <see cref="TypeDiscovery"/> using the passed
        /// <paramref name="assemblySource"/> as the source of assemblies (and those
        /// assemblies as the sources of types to inspect)
        /// </summary>
        /// <param name="assemblySource"></param>
        public TypeDiscovery(IAssemblyDiscovery assemblySource)
        {
            this.assemblySource = assemblySource;
            additionalAssemblies = Enumerable.Empty<Assembly>();
        }

        /// <summary>
        /// Returns all public, non-abstract types that implement the specified contract
        /// </summary>
        /// <typeparam name="TContractType"></typeparam>
        /// <returns></returns>
        public IEnumerable<Type> Implementing<TContractType>()
        {
            return ExportedAndNonAbstract().Where(ReflectUtils.Implements<TContractType>);
        }

        /// <summary>
        /// Adds some additional assemblies to inspect for types
        /// </summary>
        /// <param name="assemblies"></param>
        /// <returns></returns>
        public ITypeDiscovery AlsoInAssemblies(params Assembly[] assemblies)
        {
            additionalAssemblies = additionalAssemblies.Concat(assemblies);
            return this;
        }

        IEnumerable<Type> ExportedAndNonAbstract()
        {
            return assemblySource.Assemblies.Concat( additionalAssemblies )
                .SelectMany(assembly => assembly.GetExportedTypes().Where(type => !type.IsAbstract));
        }

        /// <summary>
        /// Filters types to those that are annotated with the specified attribute
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public IEnumerable<Type> WithAttribute<T>()
        {
            return ExportedAndNonAbstract().Where( type => ReflectUtils.HasAttribute(type, typeof (T)));
        }
    }
}