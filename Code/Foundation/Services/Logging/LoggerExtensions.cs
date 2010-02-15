using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Foundation.Services.Logging
{
    public static class LoggerExtensions
    {
        public static void Debug(this ILogger logger, string message, params object[] args)
        {
            logger.LogMessage(LogMessageType.Debug, message, args);
        }
    }
}
