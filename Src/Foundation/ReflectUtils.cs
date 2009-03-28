using System;
using System.Collections.Generic;
using System.Linq;
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

            foreach( var property in type.GetProperties() )
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

        /// <summary>
        /// Returns true if the specified property is annotated with any of the specified attributes
        /// </summary>
        /// <param name="propertyInfo"></param>
        /// <param name="attributes"></param>
        /// <returns></returns>
        public static bool HasAttribute(PropertyInfo propertyInfo, params Type[] attributes)
        {
            var actualAttributes = propertyInfo.GetCustomAttributes(true).ToList();

            var actualTypes = actualAttributes.ConvertAll(attribute => attribute.GetType());

            var lookingFor = attributes.ToList();

            foreach( var type in lookingFor )
            {
                if( actualTypes.Contains(type) ) return true;
            }

            return false;
        }

        public static T GetAttribute<T>(object objectValue) where T : Attribute
        {
            // Get the object Type. If the passed value is already a type, we don't have to do anything.
            var customAttributeProvider = objectValue is ICustomAttributeProvider ? objectValue as ICustomAttributeProvider : objectValue.GetType();

            var attributes = customAttributeProvider.GetCustomAttributes(typeof(T), true);
            if( attributes.Length == 0 ) return null;

            return attributes[0] as T;
        }
    }
}