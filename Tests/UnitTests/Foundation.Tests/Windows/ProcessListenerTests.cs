using System;
using System.Diagnostics;
using System.Management;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Threading;

using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Windows
{
    [TestClass]
    public class ProcessListenerTests
    {
        [TestMethod]
        public void Fires_event_when_specific_process_is_started()
        {
            using(var listener = new ProcessListener("notepad.exe"))
            {
                var processWasStarted = false;
                var wait = new ManualResetEvent(false);

                listener.ProcessStarted += delegate
                    {
                        processWasStarted = true;
                        wait.Set();
                    };

                var processArgs = new ProcessStartInfo("notepad.exe")
                    {
                        WindowStyle = ProcessWindowStyle.Hidden
                    };

                var process = Process.Start(processArgs);

                try
                {
                    wait.WaitOne(TimeSpan.FromSeconds(5));
                    Assert.AreEqual(true, processWasStarted);
                }
                finally
                {
                    if(!process.HasExited) process.Kill();
                    process.Dispose();
                }
            }
        }

        [TestMethod]
        public void Does_not_fire_event_when_specific_process_is_monitored_but_different_process_starts()
        {
            using (var listener = new ProcessListener("nonexistantprocess.exe"))
            {
                var processWasStarted = false;
                var wait = new ManualResetEvent(false);

                listener.ProcessStarted += delegate
                {
                    processWasStarted = true;
                    wait.Set();
                };

                var processArgs = new ProcessStartInfo("notepad.exe")
                {
                    WindowStyle = ProcessWindowStyle.Hidden
                };

                var process = Process.Start(processArgs);

                try
                {
                    wait.WaitOne(TimeSpan.FromSeconds(2));
                    Assert.AreEqual(false, processWasStarted);
                }
                finally
                {
                    if (!process.HasExited) process.Kill();
                    process.Dispose();
                }
            }
        }

        [TestMethod]
        public void Fires_event_when_any_process_is_started()
        {
            using (var listener = new ProcessListener("notepad.exe"))
            {
                var processWasStarted = false;
                var wait = new ManualResetEvent(false);

                listener.ProcessStarted += delegate
                {
                    processWasStarted = true;
                    wait.Set();
                };

                var processArgs = new ProcessStartInfo("notepad.exe")
                {
                    WindowStyle = ProcessWindowStyle.Hidden
                };

                var process = Process.Start(processArgs);

                try
                {
                    wait.WaitOne(TimeSpan.FromSeconds(5));
                    Assert.AreEqual(true, processWasStarted);
                }
                finally
                {
                    if (!process.HasExited) process.Kill();
                    process.Dispose();
                }
            }
        }

        [TestMethod]
        public void Fires_event_when_process_is_ended()
        {
            using (var listener = new ProcessListener("notepad.exe"))
            {
                var processWasEnded = false;
                var wait = new ManualResetEvent(false);

                listener.ProcessExited += delegate
                {
                    processWasEnded = true;
                    wait.Set();
                };

                var processArgs = new ProcessStartInfo("notepad.exe")
                {
                    WindowStyle = ProcessWindowStyle.Hidden
                };

                using (var process = Process.Start(processArgs))
                {
                    process.WaitForExit(2000);
                    if( !process.HasExited ) process.Kill();
                    wait.WaitOne(TimeSpan.FromSeconds(5));
                    Assert.AreEqual(true, processWasEnded);
                }
            }
        }
    }

    public class ProcessListener : IDisposable
    {
        readonly string processName;
        readonly ManagementEventWatcher processStartedWatcher;
        readonly ManagementEventWatcher processExitedWatcher;

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

        public ProcessListener() : this(null) {}

        public event EventHandler<EventArrivedEventArgs> ProcessStarted;
        public event EventHandler<EventArrivedEventArgs> ProcessExited;

        private void OnProcessStarted(object sender, EventArrivedEventArgs e)
        {
            if (ProcessStarted != null) ProcessStarted(sender, e);
//            var targetInstance = (ManagementBaseObject)e.NewEvent.Properties["TargetInstance"].Value;
//            string name = targetInstance.Properties["Name"].Value.ToString();
//            Console.WriteLine("{0} process started", name);
//            Debug.WriteLine("{0} process started", name);
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

        void Dispose(bool disposing)
        {
            if (!disposing) return;
            if (processStartedWatcher != null) processStartedWatcher.Dispose();
            if (processExitedWatcher != null) processExitedWatcher.Dispose();
        }
    }
}