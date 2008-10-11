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
    }
}