namespace Foundation.Services.Logging
{
    /// <summary>
    /// The types of messages that can be logged by <see cref="ILogger"/>
    /// </summary>
    public enum LogMessageType
    {
        /// <summary>
        /// Unknown / un-set
        /// </summary>
        None = 0,

        /// <summary>
        /// Verbose log message for detailed
        /// troubleshooting or development
        /// </summary>
        Debug,

        /// <summary>
        /// Informative message
        /// </summary>
        Info,

        /// <summary>
        /// A problem that should be addressed but
        /// will not prevent the application
        /// from executing properly
        /// </summary>
        Warning,

        /// <summary>
        /// An error preventing proper execution
        /// </summary>
        Error,

        /// <summary>
        /// An error that is severe enough
        /// to force an application shutdown
        /// </summary>
        Fatal
    }
}