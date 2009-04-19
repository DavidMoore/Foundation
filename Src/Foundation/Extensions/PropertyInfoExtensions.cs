using System;
using System.Reflection;

namespace Foundation.Extensions
{
    /// <summary>
    /// Extension methods for System.Reflection.PropertyInfo
    /// </summary>
    public static class PropertyInfoExtensions
    {
        /// <summary>
        /// Returns true if the property has any of the specified attributes
        /// </summary>
        /// <param name="property"></param>
        /// <param name="attributes"></param>
        /// <returns></returns>
        public static bool HasAttribute(this PropertyInfo property, params Type[] attributes)
        {
            return ReflectUtils.HasAttribute(property, attributes);
        }

        /// <summary>
        /// Gets the instance of the specified attribute on the property
        /// </summary>
        /// <typeparam name="TAttribute">The attribute to find</typeparam>
        /// <param name="property">The property marked up with the attribute</param>
        /// <returns>The attribute instance, or null if the attribute was not found on the property</returns>
        public static TAttribute GetAttribute<TAttribute>(this PropertyInfo property) where TAttribute : Attribute
        {
            return ReflectUtils.GetAttribute<TAttribute>(property);
        }
    }
}
