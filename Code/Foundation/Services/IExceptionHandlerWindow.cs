using System;

namespace Foundation.Services
{
    /// <summary>
    /// Service for displaying information about an <see cref="Exception"/>
    /// and the current application state, presenting the user with options on how to proceed.
    /// </summary>
    public interface IExceptionHandlerWindow
    {
        /// <summary>
        /// Handles the exception.
        /// </summary>
        /// <param name="exception">The exception.</param>
        /// <returns></returns>
        ExceptionHandlingOptions HandleException(Exception exception);
    }

    /// <summary>
    /// Options for how to handle an <see cref="Exception"/> dealt
    /// with by a <see cref="IExceptionHandlerWindow"/>
    /// </summary>
    [Flags]
    public enum ExceptionHandlingOptions
    {
        /// <summary>
        /// No specific options; the application
        /// may or may not continue depending on the
        /// exception type and the context in which it occurred
        /// </summary>
        None = 0,

        /// <summary>
        /// Shutdown the application
        /// </summary>
        Shutdown
    }
}