namespace Foundation.Services.Logging
{
    /// <summary>
    /// The types of messages that can be logged by <see cref="ILogger"/>.
    /// </summary>
    public enum LogMessageType
    {
        /// <summary>
        /// Unknown / un-set.
        /// </summary>
        None = 0,

        /// <summary>
        /// Trace log message for verbose logging.
        /// </summary>
        Trace = 10,

        /// <summary>
        /// Verbose log message for detailed
        /// troubleshooting or development.
        /// </summary>
        Debug = 20,

        /// <summary>
        /// Informative message.
        /// </summary>
        Info = 30,

        /// <summary>
        /// A problem that should be addressed but
        /// will not prevent the application
        /// from executing properly.
        /// </summary>
        Warning = 40,

        /// <summary>
        /// An error preventing proper execution.
        /// </summary>
        Error = 50,

        /// <summary>
        /// An error that is severe enough
        /// to force an application shutdown.
        /// </summary>
        Fatal = 60
    }
}