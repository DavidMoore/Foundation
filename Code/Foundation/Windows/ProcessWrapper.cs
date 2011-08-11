using System;
using System.Diagnostics;
using Foundation.ExtensionMethods;

namespace Foundation.Windows
{
    public class ProcessWrapper : Process
    {
        public ProcessWrapper(string fileName)
        {
            if (fileName == null) throw new ArgumentNullException("fileName");
            if(fileName.IsNullOrEmpty()) throw new ArgumentException("FileName cannot be empty", "fileName");

            StartInfo = new ProcessStartInfo(fileName)
            {
                RedirectStandardError = true,
                RedirectStandardOutput = true,
                UseShellExecute = false
            };
        }

        public ProcessWrapper() {}

        public new virtual bool Start()
        {
            // Build the executable arguments from the process
            // properties before we start the process.
            BuildArguments();

            return base.Start();
        }

        internal protected virtual void BuildArguments()
        {
            
        }

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources
        /// </summary>
        /// <param name="disposing"><c>true</c> to release both managed and unmanaged resources; <c>false</c> to release only unmanaged resources.</param>
        protected override void Dispose(bool disposing)
        {
            base.Dispose(disposing);
        }
    }
}