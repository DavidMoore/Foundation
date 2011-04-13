using System;

namespace Foundation.Services
{
    /// <summary>
    /// Common contract allowing services to return messages with rich responses, such as with a <see cref="IServiceResult"/>.
    /// </summary>
    public interface IServiceMessage
    {
        /// <summary>
        /// Gets the message severity.
        /// </summary>
        /// <value>The message severity.</value>
        MessageSeverity Severity { get; }

        /// <summary>
        /// Gets the message priority.
        /// </summary>
        /// <value>The message priority.</value>
        MessagePriority Priority { get; }

        /// <summary>
        /// Gets the intended audience of the message.
        /// </summary>
        /// <value>The intended audience.</value>
        MessageAudience Audience { get; }

        /// <summary>
        /// Gets the message.
        /// </summary>
        /// <value>The message.</value>
        string Message { get; }

        /// <summary>
        /// Gets the time the message was created.
        /// </summary>
        /// <value>The timestamp.</value>
        DateTime Timestamp { get; }
    }
}