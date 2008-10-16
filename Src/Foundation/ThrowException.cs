using System;
using System.Web.Caching;

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

        public static void IfTrue<T>(bool test) where T : Exception, new()
        {
            if (test) throw new T();
        }

        public static void IfTrue<T>(bool test, string message) where T : Exception, new()
        {
            if( !test ) return;
            IfArgumentIsNullOrEmpty("message", message);
            if( string.IsNullOrEmpty(message )) throw new T();
            var exception = Activator.CreateInstance(typeof(T), message) as Exception;
            IfNull(exception, "Couldn't create Exception of type {0} with message \"{1}\"", typeof(T).Name, message);
            throw exception;
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

        /// <summary>
        /// Throws an Exception containing the passed message if the
        /// passed value is null
        /// </summary>
        /// <param name="value"></param>
        /// <param name="message"></param>
        /// <param name="stringFormatArguments"></param>
        public static void IfNull(object value, string message, params object[] stringFormatArguments)
        {
            if( value != null ) return;
            if( stringFormatArguments.Length == 0 ) throw new Exception(message);
            throw new Exception(string.Format(message, stringFormatArguments));
        }
    }
}