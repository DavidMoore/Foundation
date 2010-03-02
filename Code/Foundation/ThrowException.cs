using System;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using Foundation.Extensions;

namespace Foundation
{
    /// <summary>
    /// Assertion methods for throwing exceptions in common scenarios
    /// </summary>
    [SuppressMessage("Microsoft.Naming", "CA1711:IdentifiersShouldNotHaveIncorrectSuffix")]
    public static class ThrowException
    {
        /// <summary>
        /// Throws a FoundationException containing the specified exception message if the assertion fails
        /// </summary>
        /// <param name="assertion"></param>
        /// <param name="exceptionMessage"></param>
        /// <param name="stringFormatParameters"></param>
        public static void IfFalse(bool assertion, string exceptionMessage, params object[] stringFormatParameters)
        {
            IfTrue(!assertion, exceptionMessage, stringFormatParameters);
        }

        /// <summary>
        /// Throws the specified exception with the specified exception message if the assertion fails
        /// </summary>
        /// <param name="assertion"></param>
        /// <param name="exceptionMessage"></param>
        /// <param name="stringFormatParameters"></param>
        public static void IfFalse<TException>(bool assertion, string exceptionMessage, params object[] stringFormatParameters)
            where TException : Exception, new()
        {
            IfTrue<TException>(!assertion, exceptionMessage, stringFormatParameters);
        }

        /// <summary>
        /// Throws a FoundationException containing the specified exception message if the assertion fails
        /// </summary>
        /// <param name="assertion"></param>
        /// <param name="message"></param>
        /// <param name="stringFormatParameters"></param>
        public static void IfTrue(bool assertion, string message, params object[] stringFormatParameters)
        {
            if( !assertion ) return;
            if( stringFormatParameters != null && stringFormatParameters.Length > 0 ) message = message.FormatCurrentCulture(stringFormatParameters);
            throw new FoundationException(message);
        }

        public static void IfTrue<TException>(bool test) where TException : Exception, new()
        {
            if( test ) throw new TException();
        }

        public static void IfTrue<TException>(bool test, string message, params object[] stringFormatParameters) where TException : Exception, new()
        {
            if( !test ) return;
            IfArgumentIsNullOrEmpty("message", message);
            if( string.IsNullOrEmpty(message) ) throw new TException();
            if( stringFormatParameters != null && stringFormatParameters.Length > 0 ) message = message.FormatCurrentCulture(stringFormatParameters);
            var exception = Activator.CreateInstance(typeof(TException), message) as Exception;
            IfNull(exception, "Couldn't create Exception of type {0} with message \"{1}\"", typeof(TException).Name, message);
            throw exception;
        }

        /// <summary>
        /// Throws an ArgumentNullException if the passed argument is null
        /// </summary>
        /// <param name="name"></param>
        /// <param name="value"></param>
        public static void IfArgumentIsNull(string name, object value)
        {
            if( name == null ) throw new ArgumentNullException("name");
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
            if( value == null ) throw new ArgumentNullException(name);
            if( value.ToString().Trim().Length == 0 )
                throw new ArgumentException(string.Format(CultureInfo.CurrentCulture, "The argument \"{0}\" is required but is empty.", name));
        }

        public static void IfNull(object value)
        {
            IfNull(value, "Unexpected null object");
        }

        public static void IfNull(object value, string message, params object[] stringFormatArguments)
        {
            IfNull<NullReferenceException>(value, message, stringFormatArguments);
        }

        public static void IfNull<TException>(object value) where TException : Exception, new()
        {
            IfNull<TException>(value, "Unexpected null object");
        }

        /// <summary>
        /// Throws an Exception containing the passed message if the
        /// passed value is null
        /// </summary>
        /// <param name="value"></param>
        /// <param name="message"></param>
        /// <param name="stringFormatArguments"></param>
        public static void IfNull<TException>(object value, string message, params object[] stringFormatArguments) where TException : Exception, new()
        {
            if( value != null ) return;
            IfArgumentIsNullOrEmpty("message", message);
            if( string.IsNullOrEmpty(message) ) throw new TException();
            if (stringFormatArguments != null && stringFormatArguments.Length > 0) message = string.Format(CultureInfo.CurrentCulture, message, stringFormatArguments);
            var exception = Activator.CreateInstance(typeof(TException), message) as Exception;
            IfNull(exception, "Couldn't create Exception of type {0} with message \"{1}\"", typeof(TException).Name, message);
            throw exception;
        }
    }
}