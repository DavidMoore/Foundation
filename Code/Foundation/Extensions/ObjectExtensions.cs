namespace Foundation.Extensions
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
            return (T)value.GetType()
                .GetMethod("MemberwiseClone", System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance)
                .Invoke(value, new object[0]);
        }
    }
}
