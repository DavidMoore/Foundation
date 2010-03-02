using System;
using System.Globalization;
using System.Runtime.Serialization;

namespace Foundation.WindowsShell
{
    [Serializable]
    class ShellImageListException : BaseException
    {
        /// <summary>
        /// Formats the specified error message and parameters using <see cref="CultureInfo.CurrentCulture"/> then
        /// initializes a new instance of the <see cref="BaseException"/> class with the resulting message.
        /// </summary>
        /// <param name="message">The formattable error message to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        /// <param name="args">Arguments to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        public ShellImageListException(string message, params object[] args) : base(message, args) {}

        /// <summary>
        /// Initializes a new instance of the <see cref="BaseException"/> class with serialized data.
        /// </summary>
        /// <param name="info">The <see cref="T:System.Runtime.Serialization.SerializationInfo"/> that holds the serialized object data about the exception being thrown.</param>
        /// <param name="context">The <see cref="T:System.Runtime.Serialization.StreamingContext"/> that contains contextual information about the source or destination.</param>
        /// <exception cref="T:System.ArgumentNullException">The <paramref name="info"/> parameter is null.</exception>
        /// <exception cref="T:System.Runtime.Serialization.SerializationException">The class name is null or <see cref="P:System.Exception.HResult"/> is zero (0).</exception>
// ReSharper disable MemberCanBePrivate.Global
        protected ShellImageListException(SerializationInfo info, StreamingContext context) : base(info, context) {}
// ReSharper restore MemberCanBePrivate.Global
    }
}