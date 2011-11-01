using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

namespace Foundation.Services
{
    public static class GetTypes
    {
        /// <exception cref="ArgumentNullException">when <paramref name="assembly"/> is null</exception>
        public static IList<Type> OfType(Type expectedType, Assembly assembly)
        {
            if (assembly == null) throw new ArgumentNullException("assembly");

            var results = new List<Type>();
            foreach( var type in assembly.GetTypes() )
            {
                if( type.IsAssignableFrom(expectedType) ) results.Add(type);
            }
            return results;
        }

        /// <summary>
        /// Returns all Types implementing the specified interface from the specified Assembly
        /// </summary>
        /// <param name="expectedInterface"></param>
        /// <param name="assembly"></param>
        /// <returns></returns>
        /// <exception cref="ArgumentNullException">when <paramref name="assembly"/> is null</exception>
        public static IList<Type> ThatImplement(Type expectedInterface, Assembly assembly)
        {
            if (assembly == null) throw new ArgumentNullException("assembly");
            return assembly.GetTypes().Where(type => ReflectionUtilities.Implements(type, expectedInterface)).ToList();
        }

        /// <summary>
        /// Returns all type implementing the specified interface in all loaded assemblies
        /// </summary>
        /// <param name="expectedInterface"></param>
        /// <param name="assembly"></param>
        /// <param name="checkReferencedAssemblies">Check referenced assemblies also</param>
        /// <returns></returns>
        /// <exception cref="ArgumentNullException">when <paramref name="assembly"/> is null</exception>
        public static IList<Type> ThatImplement(Type expectedInterface, Assembly assembly, bool checkReferencedAssemblies)
        {
            if (assembly == null) throw new ArgumentNullException("assembly");

            var results = new List<Type>();

            var assemblies = new List<AssemblyName> {assembly.GetName()};

            if( checkReferencedAssemblies ) assemblies.AddRange(assembly.GetReferencedAssemblies());

            foreach( var referencedAssembly in assemblies )
            {
                // Catch loader exceptions for referenced assemblies
                var loadedAssembly = Assembly.Load(referencedAssembly);

                if( loadedAssembly == assembly)
                {
                    results.AddRange(ThatImplement(expectedInterface, loadedAssembly));
                }
                else
                {
                    try
                    {
                        results.AddRange(ThatImplement(expectedInterface, loadedAssembly));                
                    }
                    catch (ReflectionTypeLoadException)
                    {
                        continue;
                    }
                }
            }

            return results;
        }
    }
}