using System;
using System.Management;

namespace Foundation.Windows
{
    /// <summary>
    /// Fires events when a specific process name, or any process, is started or exited on the local machine.
    /// </summary>
    public interface IProcessListener : IDisposable
    {
        /// <summary>
        /// Occurs when a process has been started.
        /// </summary>
        event EventHandler<EventArrivedEventArgs> ProcessStarted;

        /// <summary>
        /// Occurs when a process has exited.
        /// </summary>
        event EventHandler<EventArrivedEventArgs> ProcessExited;

        /// <summary>
        /// Gets the name of the process being listened for.
        /// </summary>
        /// <value>
        /// The name of the process being listened for. <c>null</c> if listening for all processes.
        /// </value>
        string ProcessName { get; }
    }
}