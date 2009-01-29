using System;
using System.Collections.Generic;
using System.Reflection;

namespace Foundation.Services
{
    public static class GetTypes
    {
        public static IList<Type> OfType(Type expectedType, Assembly assembly)
        {
            var results = new List<Type>();
            foreach(var type in assembly.GetTypes() )
            {
                if (type.IsAssignableFrom(expectedType)) results.Add(type);
            }
            return results;
        }

        /// <summary>
        /// Returns all Types implementing the specified interface from the specified Assembly
        /// </summary>
        /// <param name="expectedInterface"></param>
        /// <param name="assembly"></param>
        /// <returns></returns>
        public static IList<Type> ThatImplement(Type expectedInterface, Assembly assembly)
        {
            var results = new List<Type>();
            foreach (var type in assembly.GetTypes())
            {
                if (ReflectUtils.Implements(type, expectedInterface)) results.Add(type);
            }
            return results;
        }

        /// <summary>
        /// Returns all type implementing the specified interface in all loaded assemblies
        /// </summary>
        /// <param name="expectedInterface"></param>
        /// <param name="assembly"></param>
        /// <param name="checkReferencedAssemblies">Check referenced assemblies also</param>
        /// <returns></returns>
        public static IList<Type> ThatImplement(Type expectedInterface, Assembly assembly, bool checkReferencedAssemblies)
        {
            var results = new List<Type>();

            var assemblies = new List<AssemblyName> { assembly.GetName() };
            
            if( checkReferencedAssemblies ) assemblies.AddRange(assembly.GetReferencedAssemblies());

            foreach(var referencedAssembly in assemblies)
            {
                results.AddRange(ThatImplement(expectedInterface, Assembly.Load(referencedAssembly)));
            }
            
            return results;
        }
    }
}