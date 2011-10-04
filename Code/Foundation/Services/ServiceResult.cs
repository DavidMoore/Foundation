using System;
using System.Collections.Generic;

namespace Foundation.Services
{
    public class ServiceResult<T> : ServiceResult, IServiceResult<T>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ServiceResult"/> class.
        /// </summary>
        /// <param name="resultCode">The result.</param>
        public ServiceResult(ServiceResultCode resultCode) : base(resultCode) {}

        /// <summary>
        /// Initializes a new instance of the <see cref="ServiceResult&lt;T&gt;"/> class.
        /// </summary>
        public ServiceResult() {}

        #region IServiceResult<T> Members

        public new T ResultValue { get; set; }

        object IServiceResult.ResultValue
        {
            get { return ResultValue; }
        }

        #endregion
    }

    public static class ServiceResultExtensions
    {
        public static void AddErrorMessage(this ServiceResult result, string message, params object[] parameters)
        {
            result.AddMessage(new ServiceMessageBuilder()
                .SeverityOf(MessageSeverity.Error)
                .Message(message, parameters).Build());
        }

        public static void AddWarningMessage(this ServiceResult result, string message, params object[] parameters)
        {
            result.AddMessage(new ServiceMessageBuilder()
                .SeverityOf(MessageSeverity.Warning)
                .Message(message, parameters).Build());
        }

        public static void AddInfoMessage(this ServiceResult result, string message, params object[] parameters)
        {
            result.AddMessage(new ServiceMessageBuilder()
                .SeverityOf(MessageSeverity.Info)
                .Message(message, parameters).Build());
        }
    }

    /// <summary>
    /// Holds the result of a service call, including the status of the result,
    /// and any informational messages accompanying it.
    /// </summary>
    public class ServiceResult : IServiceResult
    {
        readonly IList<IServiceMessage> messages;

        /// <summary>
        /// Initializes a new instance of the <see cref="ServiceResult"/> class.
        /// </summary>
        /// <param name="resultCode">The result.</param>
        public ServiceResult(ServiceResultCode resultCode) : this()
        {
            ResultCode = resultCode;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="T:System.Object"/> class.
        /// </summary>
        public ServiceResult()
        {
            messages = new List<IServiceMessage>();
        }

        #region IServiceResult Members

        /// <summary>
        /// Gets the status of the result; i.e. if it succeeded or failed.
        /// </summary>
        /// <value>The result.</value>
        public ServiceResultCode ResultCode { get; set; }

        /// <summary>
        /// Gets the result value.
        /// </summary>
        public object ResultValue { get; set; }

        /// <summary>
        /// Gets the list of informational messages for the result.
        /// </summary>
        /// <remarks>As an example, an authentication service may return a <see cref="ServiceResultCode.Error"/> result, while
        /// the <see cref="IServiceResult.Messages"/> will contain detail on why the call failed, such as an "Invalid password" message, that
        /// could provide more information to the end user.</remarks>
        /// <value>List of informational messages.</value>
        public IEnumerable<IServiceMessage> Messages
        {
            get { return messages; }
        }

        #endregion

        public void AddMessage(IServiceMessage message)
        {
            messages.Add(message);
        }
    }

    public class ServiceMessage : IServiceMessage
    {
        #region IServiceMessage Members

        public MessageSeverity Severity { get; set; }
        public MessagePriority Priority { get; set; }
        public MessageAudience Audience { get; set; }
        public string Message { get; set; }
        public DateTime Timestamp { get; set; }

        #endregion
    }

    public class ServiceMessageBuilder
    {
        MessageAudience audience;
        string message;
        MessagePriority priority;
        MessageSeverity severity;
        DateTime timestamp;

        public ServiceMessageBuilder()
        {
            timestamp = DateTime.UtcNow;
        }

        public ServiceMessageBuilder AudienceOf(MessageAudience messageAudience)
        {
            audience = messageAudience;
            return this;
        }

        public ServiceMessageBuilder PriorityOf(MessagePriority messagePriority)
        {
            priority = messagePriority;
            return this;
        }

        public ServiceMessageBuilder Message(string format, params object[] parameters)
        {
            if (parameters == null || parameters.Length == 0)
                message = format;
            else
            {
                message = string.Format(format, parameters);
            }

            return this;
        }

        public ServiceMessageBuilder SeverityOf(MessageSeverity messageSeverity)
        {
            severity = messageSeverity;
            return this;
        }

        public ServiceMessageBuilder Timestamp(DateTime dateTime)
        {
            timestamp = dateTime;
            return this;
        }

        public ServiceMessage Build()
        {
            return new ServiceMessage
                   {
                       Audience = MessageAudience.None,
                       Message = message,
                       Priority = priority,
                       Severity = severity,
                       Timestamp = timestamp
                   };
        }
    }
}