using System;
using System.Management;

namespace Foundation.Windows
{
    /// <summary>
    /// Event management for when any system process (or a process specified by name) is created or exited.
    /// </summary>
    public class ProcessListener : IProcessListener
    {
        readonly string processName;
        readonly ManagementEventWatcher processStartedWatcher;
        readonly ManagementEventWatcher processExitedWatcher;

        /// <summary>
        /// Initializes a new instance of the <see cref="ProcessListener"/> class.
        /// </summary>
        /// <param name="processName">Name of the process to monitor.</param>
        public ProcessListener(string processName)
        {
            this.processName = processName;

            // Poll every second for new processes.
            var query = "SELECT TargetInstance  FROM __InstanceCreationEvent WITHIN  1  WHERE TargetInstance ISA \'Win32_Process\'";

            // If specified, monitor for an exact process name.
            if (!string.IsNullOrEmpty(processName)) query += " AND TargetInstance.Name = '" + processName + "'";

            processStartedWatcher = new ManagementEventWatcher(@"\\.\root\CIMV2", query);
            processStartedWatcher.EventArrived += OnProcessStarted;
            processStartedWatcher.Start();

            query = "SELECT TargetInstance  FROM __InstanceDeletionEvent WITHIN  1  WHERE TargetInstance ISA \'Win32_Process\'";

            // If specified, monitor for an exact process name.
            if (!string.IsNullOrEmpty(processName)) query += " AND TargetInstance.Name = '" + processName + "'";

            processExitedWatcher = new ManagementEventWatcher(@"\\.\root\CIMV2", query);
            processExitedWatcher.EventArrived += OnProcessExited;
            processExitedWatcher.Start();
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="ProcessListener"/> class.
        /// </summary>
        public ProcessListener() : this(null) {}

        /// <summary>
        /// Occurs when a process has been started.
        /// </summary>
        public event EventHandler<EventArrivedEventArgs> ProcessStarted;
        
        /// <summary>
        /// Occurs when a process has exited.
        /// </summary>
        public event EventHandler<EventArrivedEventArgs> ProcessExited;

        public string ProcessName { get { return processName; } }

        private void OnProcessStarted(object sender, EventArrivedEventArgs e)
        {
            if (ProcessStarted != null) ProcessStarted(sender, e);
        }

        private void OnProcessExited(object sender, EventArrivedEventArgs e)
        {
            if (ProcessExited != null) ProcessExited(sender, e);
        }
        
        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        /// <filterpriority>2</filterpriority>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources
        /// </summary>
        /// <param name="disposing"><c>true</c> to release both managed and unmanaged resources; <c>false</c> to release only unmanaged resources.</param>
        void Dispose(bool disposing)
        {
            if (!disposing) return;
            if (processStartedWatcher != null) processStartedWatcher.Dispose();
            if (processExitedWatcher != null) processExitedWatcher.Dispose();
        }
    }
}