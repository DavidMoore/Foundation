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

        public static IList<Type> ThatImplement(Type expectedInterface, Assembly assembly)
        {
            var results = new List<Type>();
            foreach (var type in assembly.GetTypes())
            {
                if (ReflectUtils.Implements(type, expectedInterface)) results.Add(type);
            }
            return results;
        }
    }
}