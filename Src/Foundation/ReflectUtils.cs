using System;
using System.Collections.Generic;
using System.Reflection;

namespace Foundation
{
    /// <summary>
    /// Reflection-related utilties
    /// </summary>
    public class ReflectUtils
    {
        /// <summary>
        /// Gets all the properties from the object's type with the specified attribute
        /// </summary>
        public static List<PropertyInfo> GetPropertiesWithAttribute(Type type, Type attribute)
        {
            var properties = new List<PropertyInfo>();

            foreach( PropertyInfo property in type.GetProperties() )
            {
                if( property.GetCustomAttributes(attribute, true).Length > 0 )
                {
                    properties.Add(property);
                }
            }
            return properties;
        }

        /// <summary>
        /// Returns true if the specified type is annotated with the specified attribute
        /// </summary>
        /// <param name="type"></param>
        /// <param name="attribute"></param>
        /// <returns></returns>
        public static bool HasAttribute(Type type, Type attribute)
        {
            return type.GetCustomAttributes(attribute, true).Length > 0;
        }

        /// <summary>
        /// Returns true if the passed type implements the specified interface
        /// </summary>
        /// <param name="type"></param>
        /// <param name="desiredInterface"></param>
        /// <returns></returns>
        public static bool Implements(Type type, Type desiredInterface)
        {
            return type.GetInterface(desiredInterface.Name) != null;
        }
    }
}