using System;

namespace Foundation
{
    /// <summary>
    /// Assertion methods for throwing exceptions in common scenarios
    /// </summary>
    public class ThrowException
    {
        /// <summary>
        /// Throws a FoundationException containing the specified exception message if the assertion fails
        /// </summary>
        /// <param name="assertion"></param>
        /// <param name="exceptionMessage"></param>
        public static void IfFalse(bool assertion, string exceptionMessage)
        {
            IfTrue( !assertion, exceptionMessage );
        }

        /// <summary>
        /// Throws a FoundationException containing the specified exception message if the assertion fails
        /// </summary>
        /// <param name="assertion"></param>
        /// <param name="exceptionMessage"></param>
        public static void IfTrue(bool assertion, string exceptionMessage)
        {
            if( assertion ) throw new FoundationException(exceptionMessage);
        }

        /// <summary>
        /// Throws an ArgumentNullException if the passed argument is null
        /// </summary>
        /// <param name="name"></param>
        /// <param name="value"></param>
        public static void IfArgumentIsNull(string name, object value)
        {
            if( value == null ) throw new ArgumentNullException(name);
        }

        /// <summary>
        /// Throws an ArgumentNullException if the passed argument is null, or
        /// an ArgumentException if the argument is empty.
        /// To determine if the argument is empty, it is converted to a string
        /// and any whitespace is trimmed before checking the length.
        /// </summary>
        /// <param name="name">The name of the argument</param>
        /// <param name="value">The value of the argument</param>
        public static void IfArgumentIsNullOrEmpty(string name, object value)
        {
            if (value == null) throw new ArgumentNullException(name);
            if( value.ToString().Trim().Length == 0)
                throw new ArgumentException(string.Format("The argument \"{0}\" is required but is empty.", name));
        }
    }
}