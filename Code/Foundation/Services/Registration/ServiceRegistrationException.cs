using System;
using System.Globalization;
using System.Runtime.Serialization;

namespace Foundation.Services.Registration
{
    [Serializable]
    public class ServiceRegistrationException : BaseException
    {
        public ServiceRegistrationException(string message, Type serviceType)
            : base(string.Format(CultureInfo.CurrentCulture, message, serviceType)) {}

        /// <summary>
        /// Initializes a new instance of the <see cref="ServiceRegistrationException"/> class.
        /// </summary>
        public ServiceRegistrationException() {}

        /// <summary>
        /// Initializes a new instance of the <see cref="ServiceRegistrationException"/> class with a specified error message.
        /// </summary>
        /// <param name="message">The message that describes the error.</param>
        public ServiceRegistrationException(string message) : base(message) {}

        /// <summary>
        /// Formats the specified error message and parameters using <see cref="CultureInfo.CurrentCulture"/> then
        /// initializes a new instance of the <see cref="ServiceRegistrationException"/> class with the resulting message.
        /// </summary>
        /// <param name="message">The formattable error message to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        /// <param name="args">Arguments to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        public ServiceRegistrationException(string message, params object[] args) : base(message, args) {}

        /// <summary>
        /// Formats the specified error message and parameters using <see cref="CultureInfo.CurrentCulture"/> then
        /// initializes a new instance of the <see cref="ServiceRegistrationException"/> class with the resulting message.
        /// </summary>
        /// <param name="innerException">The exception that is the cause of the current exception, or a null reference (Nothing in Visual Basic) if no inner exception is specified.</param>
        /// <param name="message">The formattable error message to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        /// <param name="args">Arguments to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        public ServiceRegistrationException(Exception innerException, string message, params object[] args) : base(innerException, message, args) {}

        /// <summary>
        /// Initializes a new instance of the <see cref="ServiceRegistrationException"/> class with a specified error message and a reference to the inner exception that is the cause of this exception.
        /// </summary>
        /// <param name="message">The error message that explains the reason for the exception.</param>
        /// <param name="innerException">The exception that is the cause of the current exception, or a null reference (Nothing in Visual Basic) if no inner exception is specified.</param>
        public ServiceRegistrationException(string message, Exception innerException) : base(message, innerException) {}

        /// <summary>
        /// Initializes a new instance of the <see cref="ServiceRegistrationException"/> class with serialized data.
        /// </summary>
        /// <param name="info">The <see cref="T:System.Runtime.Serialization.SerializationInfo"/> that holds the serialized object data about the exception being thrown.</param>
        /// <param name="context">The <see cref="T:System.Runtime.Serialization.StreamingContext"/> that contains contextual information about the source or destination.</param>
        /// <exception cref="T:System.ArgumentNullException">The <paramref name="info"/> parameter is null.</exception>
        /// <exception cref="T:System.Runtime.Serialization.SerializationException">The class name is null or <see cref="P:System.Exception.HResult"/> is zero (0).</exception>
        protected ServiceRegistrationException(SerializationInfo info, StreamingContext context) : base(info, context) {}
    }
}