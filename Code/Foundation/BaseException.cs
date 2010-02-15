using System;
using System.Globalization;
using System.Runtime.Serialization;

namespace Foundation
{
    /// <summary>
    /// Provides a base implementation over <see cref="Exception"/> with
    /// more helpful constructors for creating formatted messages instead
    /// of having to call <see cref="string.Format(string,object[])"/> whenever building an exception
    /// </summary>
    public class BaseException : Exception
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="BaseException"/> class.
        /// </summary>
        public BaseException() {}

        /// <summary>
        /// Initializes a new instance of the <see cref="BaseException"/> class with a specified error message.
        /// </summary>
        /// <param name="message">The message that describes the error.</param>
        public BaseException(string message) : base(message) {}

        /// <summary>
        /// Formats the specified error message and parameters using <see cref="CultureInfo.CurrentCulture"/> then
        /// initializes a new instance of the <see cref="BaseException"/> class with the resulting message.
        /// </summary>
        /// <param name="message">The formattable error message to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        /// <param name="args">Arguments to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        public BaseException(string message, params object[] args) : this(string.Format(CultureInfo.CurrentCulture, message, args)){}

        /// <summary>
        /// Formats the specified error message and parameters using <see cref="CultureInfo.CurrentCulture"/> then
        /// initializes a new instance of the <see cref="BaseException"/> class with the resulting message.
        /// </summary>
        /// <param name="innerException">The exception that is the cause of the current exception, or a null reference (Nothing in Visual Basic) if no inner exception is specified.</param>
        /// <param name="message">The formattable error message to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        /// <param name="args">Arguments to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        public BaseException(Exception innerException, string message, params object[] args) : this(string.Format(CultureInfo.CurrentCulture, message, args), innerException) { }
        
        /// <summary>
        /// Initializes a new instance of the <see cref="BaseException"/> class with a specified error message and a reference to the inner exception that is the cause of this exception.
        /// </summary>
        /// <param name="message">The error message that explains the reason for the exception.</param>
        /// <param name="innerException">The exception that is the cause of the current exception, or a null reference (Nothing in Visual Basic) if no inner exception is specified.</param>
        public BaseException(string message, Exception innerException) : base(message, innerException) {}

        /// <summary>
        /// Initializes a new instance of the <see cref="BaseException"/> class with serialized data.
        /// </summary>
        /// <param name="info">The <see cref="T:System.Runtime.Serialization.SerializationInfo"/> that holds the serialized object data about the exception being thrown.</param>
        /// <param name="context">The <see cref="T:System.Runtime.Serialization.StreamingContext"/> that contains contextual information about the source or destination.</param>
        /// <exception cref="T:System.ArgumentNullException">The <paramref name="info"/> parameter is null.</exception>
        /// <exception cref="T:System.Runtime.Serialization.SerializationException">The class name is null or <see cref="P:System.Exception.HResult"/> is zero (0).</exception>
        protected BaseException(SerializationInfo info, StreamingContext context) : base(info, context) {}
    }
}