using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using Foundation.ExtensionMethods;
using Foundation.Windows;

namespace Foundation.Build
{
    /// <summary>
    /// <p>The SrcTool (Srctool.exe) utility lists all files indexed within the .pdb file.
    /// For each file, it lists the full path, source control server, and version number of the file.
    /// You can use this information for reference.</p>
    /// <p>You can also use SrcTool to list the raw source file information from the .pdb file.
    /// To do this, use the –s switch on the command line.</p>
    /// <p>SrcTool has other options as well. Use the ? switch to see them.
    /// Of most interest is that this utility can be used to extract all of the source files from
    /// version control. This is done with the -x switch.</p>
    /// </summary>
    /// <remarks>Previous versions of this program created a directory called src below the current directory
    /// when extracting files. This is no longer the case. If you want the src directory used, you must create
    /// it yourself and run the command from that directory.</remarks>
    public class SrcTool : ProcessWrapper
    {
        const string debuggingToolsForWindowsFolderName = "Debugging Tools for Windows";

        static readonly IEnumerable<string> searchPaths = new[]
        {
            Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles), debuggingToolsForWindowsFolderName),
            Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ProgramFilesX86), debuggingToolsForWindowsFolderName + " (x86)")
        };

        TimeSpan DefaultTimeout = TimeSpan.FromSeconds(5);

        public SrcTool() : base(GetSrcToolPath()) {}

        public SrcTool(string filename) : this()
        {
            Filename = filename;
        }

        static string GetSrcToolPath()
        {
            var directory = searchPaths.FirstOrDefault(Directory.Exists);

            if(directory == null) throw new FileNotFoundException("Couldn't find SrcTool.exe. Please install Debugging Tools for Windows.");

            return Path.Combine(directory, @"srcsrv\SrcTool.exe");
        }

        internal protected override void BuildArguments()
        {
            var sb = new StringBuilder();

            if (RawSourceData.HasValue && RawSourceData.Value) sb.Append("-r ");

            if( Filename.IsNullOrEmpty()) throw new FoundationException("The FileName argument for SrcTool is required");

            sb.AppendFormat("\"{0}\"", Filename);

            StartInfo.Arguments = sb.ToString();
        }

        /// <summary>
        /// Gets or sets the raw source data.
        /// </summary>
        /// <value>
        /// The raw source data options.
        /// </value>
        /// <remarks>When set to <c>true</c>, dumps raw source data from the pdb.</remarks>
        public bool? RawSourceData { get; set; }

        public string Filename { get; set; }

        /// <summary>
        /// Returns the list of source files used to build the binary that the debug symbols belong to.
        /// </summary>
        /// <returns></returns>
        public IEnumerable<string> GetSourceFiles()
        {
            RawSourceData = true;

            var lines = new List<string>();

            var errorStreamWaitHandle = new ManualResetEvent(false);
            var outputStreamWaitHandle = new ManualResetEvent(false);
            var processWaitHandle = new ManualResetEvent(false);

            ErrorDataReceived += delegate(object sender, DataReceivedEventArgs args)
            {
                if (args.Data == null) errorStreamWaitHandle.Set();
            };

            OutputDataReceived += delegate(object sender, DataReceivedEventArgs args)
            {
                if (args.Data == null)
                {
                    outputStreamWaitHandle.Set();
                    return;
                }

                if( args.Data.Trim().Length > 0) lines.Add(args.Data);
            };

            Exited += (o, eventArgs) => processWaitHandle.Set();

            EnableRaisingEvents = true;
            StartInfo.UseShellExecute = false;
            StartInfo.RedirectStandardOutput = true;
            StartInfo.RedirectStandardError = true;
            StartInfo.RedirectStandardInput = true;
            StartInfo.CreateNoWindow = true;

            Start();

            BeginErrorReadLine();
            BeginOutputReadLine();

            WaitHandle.WaitAll(new[]
            {
                errorStreamWaitHandle, outputStreamWaitHandle, processWaitHandle
            }, DefaultTimeout);

            return lines;
        }
    }
}