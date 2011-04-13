namespace Foundation.Services
{
    /// <summary>
    /// Denotes the severity of a system message. This can be intended
    /// for logging infrastructure, or messages returned with service results.
    /// </summary>
    public enum MessageSeverity
    {
        /// <summary>
        /// No severity specified.
        /// </summary>
        None = 0,

        /// <summary>
        /// Debugging purposes (developers / support).
        /// </summary>
        Debug,

        /// <summary>
        /// Performance / debugging.
        /// </summary>
        Trace,

        /// <summary>
        /// Informational, for the technical end user (help desk, power users).
        /// </summary>
        Info,

        /// <summary>
        /// Notification (may or may not be intended to be immediately visible to the user).
        /// </summary>
        Notification,

        /// <summary>
        /// A warning. Program execution will continue as normal but the warning may need to be addressed.
        /// </summary>
        Warning,

        /// <summary>
        /// The program may or may not continue after this error.
        /// </summary>
        Error,

        /// <summary>
        /// An error that will stop program execution has been experienced.
        /// </summary>
        Fatal
    }
}