using System;
using System.Globalization;
using System.Runtime.Serialization;

namespace Foundation.Services
{
    /// <summary>
    /// Exception when an attempt at resolving a service component in a container failed
    /// </summary>
    [Serializable]
    public class ServiceResolutionFailedException : BaseException
    { 
        /// <summary>
        /// Initailizes a new instance of <see cref="ServiceResolutionFailedException"/> for
        /// the specified service type, and inner exception containing details of the
        /// resolution failure
        /// </summary>
        /// <param name="serviceType">The service type being resolved</param>
        /// <param name="innerException">The details of the resolution failure</param>
        public ServiceResolutionFailedException( Type serviceType, Exception innerException) : base(innerException, "Couldn't resolve service of type {0}", serviceType) {}

        /// <summary>
        /// Initializes a new instance of the <see cref="ServiceResolutionFailedException"/> class.
        /// </summary>
        public ServiceResolutionFailedException() {}

        /// <summary>
        /// Initializes a new instance of the <see cref="ServiceResolutionFailedException"/> class with a specified error message.
        /// </summary>
        /// <param name="message">The message that describes the error.</param>
        public ServiceResolutionFailedException(string message) : base(message) {}

        /// <summary>
        /// Formats the specified error message and parameters using <see cref="CultureInfo.CurrentCulture"/> then
        /// initializes a new instance of the <see cref="ServiceResolutionFailedException"/> class with the resulting message.
        /// </summary>
        /// <param name="message">The formattable error message to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        /// <param name="args">Arguments to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        public ServiceResolutionFailedException(string message, params object[] args) : base(message, args) {}

        /// <summary>
        /// Formats the specified error message and parameters using <see cref="CultureInfo.CurrentCulture"/> then
        /// initializes a new instance of the <see cref="ServiceResolutionFailedException"/> class with the resulting message.
        /// </summary>
        /// <param name="innerException">The exception that is the cause of the current exception, or a null reference (Nothing in Visual Basic) if no inner exception is specified.</param>
        /// <param name="message">The formattable error message to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        /// <param name="args">Arguments to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        public ServiceResolutionFailedException(Exception innerException, string message, params object[] args) : base(innerException, message, args) {}

        /// <summary>
        /// Initializes a new instance of the <see cref="ServiceResolutionFailedException"/> class with a specified error message and a reference to the inner exception that is the cause of this exception.
        /// </summary>
        /// <param name="message">The error message that explains the reason for the exception.</param>
        /// <param name="innerException">The exception that is the cause of the current exception, or a null reference (Nothing in Visual Basic) if no inner exception is specified.</param>
        public ServiceResolutionFailedException(string message, Exception innerException) : base(message, innerException) {}

        /// <summary>
        /// Initializes a new instance of the <see cref="ServiceResolutionFailedException"/> class with serialized data.
        /// </summary>
        /// <param name="info">The <see cref="T:System.Runtime.Serialization.SerializationInfo"/> that holds the serialized object data about the exception being thrown.</param>
        /// <param name="context">The <see cref="T:System.Runtime.Serialization.StreamingContext"/> that contains contextual information about the source or destination.</param>
        /// <exception cref="T:System.ArgumentNullException">The <paramref name="info"/> parameter is null.</exception>
        /// <exception cref="T:System.Runtime.Serialization.SerializationException">The class name is null or <see cref="P:System.Exception.HResult"/> is zero (0).</exception>
        protected ServiceResolutionFailedException(SerializationInfo info, StreamingContext context) : base(info, context) {}
    }
}