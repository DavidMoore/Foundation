namespace Foundation.Services
{
    /// <summary>
    /// Priority for a message.
    /// </summary>
    public enum MessagePriority
    {
        /// <summary>
        /// There is no priority set on the message.
        /// </summary>
        None = 0,

        /// <summary>
        /// Low priority message.
        /// </summary>
        Low,

        /// <summary>
        /// Medium priority message.
        /// </summary>
        Medium,

        /// <summary>
        /// High priority message.
        /// </summary>
        High
    }
}