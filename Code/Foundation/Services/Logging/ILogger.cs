using System;

namespace Foundation.Services.Logging
{
    /// <summary>
    /// A simple logging facade to abstract away which logging library is being used, and allow
    /// wiring this service via a <see cref="IServiceManager"/>
    /// </summary>
    public interface ILogger
    {
        /// <summary>
        /// Logs a message
        /// </summary>
        /// <param name="logMessageType">The severity type of the message</param>
        /// <param name="formattableMessage">The message to log, which can be passed to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        /// <param name="formatArgs">The arguments to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/> when formatting <paramref name="formattableMessage"/></param>
        void LogMessage(LogMessageType logMessageType, string formattableMessage, params object[] formatArgs);

        /// <summary>
        /// Logs an exception message
        /// </summary>
        /// <param name="logMessageType">The severity type of the message</param>
        /// <param name="exception">The exception to log</param>
        /// <param name="formattableMessage">The message to log, which can be passed to <see cref="string.Format(System.IFormatProvider,string,object[])"/></param>
        /// <param name="formatArgs">The arguments to pass to <see cref="string.Format(System.IFormatProvider,string,object[])"/> when formatting <paramref name="formattableMessage"/></param>
        void LogException(LogMessageType logMessageType, Exception exception, string formattableMessage, params object[] formatArgs);
    }
}