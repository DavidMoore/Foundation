using System;
using System.Diagnostics;
using System.Globalization;
using System.Text;

namespace Foundation
{
    public static class FoundationEventLog
    {
        const string applicationEventLog = "Application";
        const string foundationSource = "Foundation";

        /// <summary>
        /// Logs an exception to the Foundation event log
        /// </summary>
        /// <param name="exception"></param>
        /// <param name="message"></param>
        /// <param name="stringFormatArgs"></param>
        public static void Error(Exception exception, string message, params object[] stringFormatArgs)
        {
            var sb = new StringBuilder();

            if( !EventLog.SourceExists(foundationSource) ) EventLog.CreateEventSource(foundationSource, applicationEventLog);

            sb.AppendFormat(CultureInfo.CurrentCulture, message, stringFormatArgs).AppendLine().AppendLine();

            sb.AppendLine("Exception details:").AppendLine();

            sb.AppendFormat("{0}:", exception.GetType().Name).AppendLine();

            sb.AppendLine(exception.Message)
                .Append(exception.StackTrace);

            EventLog.WriteEntry(foundationSource, sb.ToString(), EventLogEntryType.Error);
        }
    }
}