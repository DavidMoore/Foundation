using System;
using System.Reflection;

namespace Foundation.ExtensionMethods
{
    public static class TypeExtensions
    {
        /// <summary>
        /// Looks for a property of the specified type. If more than 1 matching property is found, an exception is thrown.
        /// </summary>
        /// <param name="type"></param>
        /// <param name="propertyType"></param>
        /// <returns></returns>
        public static PropertyInfo GetProperty(this Type type, Type propertyType)
        {
            if (type == null) throw new ArgumentNullException("type");
            PropertyInfo propertyInfo = null;

            foreach( var property in type.GetProperties() )
            {
                if( !property.PropertyType.Equals(propertyType) ) continue;

                // Have we already found a matching property?
                ThrowException.IfTrue<FoundationException>(propertyInfo != null, "More than 1 property with type {0} found in {1}",
                    propertyType, type);

                propertyInfo = property;
            }

            return propertyInfo;
        }
    }
}
