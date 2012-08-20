using System;
using System.Diagnostics;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Threading;

using Foundation.Windows;

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
}