using System;
using System.Collections.Generic;
using System.Reflection;

namespace Foundation.ExtensionMethods
{
    /// <summary>
    /// Extension methods for <see cref="MemberInfo"/>
    /// </summary>
    public static class MemberInfoExtensions
    {
        /// <summary>
        /// Returns true if the member has any of the specified attributes
        /// </summary>
        /// <param name="memberInfo"></param>
        /// <param name="attributes"></param>
        /// <returns></returns>
        public static bool HasAttribute(this MemberInfo memberInfo, params Type[] attributes)
        {
            return ReflectionUtilities.HasAttribute(memberInfo, attributes);
        }

        /// <summary>
        /// Gets the instance of the specified attribute on the member.
        /// </summary>
        /// <typeparam name="TAttribute">The attribute to find</typeparam>
        /// <param name="memberInfo">The member marked up with the attribute</param>
        /// <returns>The attribute instance, or null if the attribute was not found on the member</returns>
        public static TAttribute GetAttribute<TAttribute>(this MemberInfo memberInfo) where TAttribute : Attribute
        {
            return ReflectionUtilities.GetAttribute<TAttribute>(memberInfo);
        }

        /// <summary>
        /// Gets all instances of the specified attribute on the member.
        /// </summary>
        /// <typeparam name="TAttribute">The type of the attribute to find.</typeparam>
        /// <param name="memberInfo">The member to look for the attribute on.</param>
        /// <returns>A collection of instances of the attribute (possibly empty).</returns>
        public static IEnumerable<TAttribute> GetAttributes<TAttribute>(this MemberInfo memberInfo) where TAttribute : Attribute
        {
            return ReflectionUtilities.GetAttributes<TAttribute>(memberInfo);
        }
    }
}