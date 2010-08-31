using System;

namespace Foundation.ExtensionMethods
{
    public static class ObjectExtensions
    {
        /// <summary>
        /// Does a shallow copy of the object by invoking MemberwiseClone
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static object CloneShallow(this object value)
        {
            if (value == null) throw new ArgumentNullException("value");
            return value.GetType()
                .GetMethod("MemberwiseClone", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance)
                .Invoke(value, new object[0]);
        }

        /// <summary>
        /// Does a shallow copy of the object by invoking MemberwiseClone
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static T CloneShallow<T>(this object value) where T : class, new()
        {
            if (value == null) throw new ArgumentNullException("value");
            return (T)value.GetType()
                .GetMethod("MemberwiseClone", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance)
                .Invoke(value, new object[0]);
        }
    }
}
