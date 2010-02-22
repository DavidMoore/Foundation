using System;

namespace Foundation.Services.Logging
{
    public static class LoggerExtensions
    {
        /// <summary>
        /// Logs a message in the <see cref="LogMessageType.Debug"/> category
        /// </summary>
        /// <param name="logger"></param>
        /// <param name="message"></param>
        /// <param name="args"></param>
        public static void Debug(this ILogger logger, string message, params object[] args)
        {
            if (logger == null) throw new ArgumentNullException("logger");
            logger.LogMessage(LogMessageType.Debug, message, args);
        }

        /// <summary>
        /// Logs a message in the <see cref="LogMessageType.Error"/> category
        /// </summary>
        /// <param name="logger"></param>
        /// <param name="message"></param>
        /// <param name="args"></param>
        public static void Error(this ILogger logger, string message, params object[] args)
        {
            if (logger == null) throw new ArgumentNullException("logger");
            logger.LogMessage(LogMessageType.Error, message, args);
        }
    }
}
