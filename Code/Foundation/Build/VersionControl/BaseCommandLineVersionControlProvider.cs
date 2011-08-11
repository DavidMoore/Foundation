using System;
using System.Diagnostics;
using Foundation.Services;
using Foundation.Windows;

namespace Foundation.Build.VersionControl
{
    public abstract class BaseCommandLineVersionControlProvider : BaseVersionControlProvider
    {
        /// <summary>
        /// The default timeout for the VCS execution.
        /// </summary>
        const double defaultTimeoutMilliseconds = 5 * 60 * 1000;

        protected BaseCommandLineVersionControlProvider() {}

        protected override IServiceResult ExecuteOperation(VersionControlArguments arguments)
        {
            return CommandLineExecute(arguments);
        }

        /// <summary>
        /// Executes the VCS command line, building up the arguments using <see cref="BuildCommandLineArguments"/>
        /// and then parsing the result of the executable in <see cref="ParseResult"/>.
        /// </summary>
        /// <param name="arguments">The arguments.</param>
        /// <returns></returns>
        public IServiceResult CommandLineExecute(VersionControlArguments arguments)
        {
            var commandLineArgs = BuildCommandLineArguments(arguments);
            var processStartInfo = new ProcessStartInfo(FileName, commandLineArgs);

            using (var process = new Process())
            {
                process.StartInfo = processStartInfo;

                // UseShellExecute must be false so we can do
                // redirection of standard input and output.
                processStartInfo.UseShellExecute = false;

                process.Start();
                process.WaitForExit((int) Timeout.TotalMilliseconds);

                return ParseResult(arguments, new ProcessResult(process) );
            }
        }

        /// <summary>
        /// Parses the result of executing the VCS executable.
        /// </summary>
        /// <param name="args"></param>
        /// <param name="processResult"></param>
        /// <returns></returns>
        public abstract IServiceResult ParseResult(VersionControlArguments args, IProcessResult processResult);

        /// <summary>
        /// Gets or sets the default timeout for any operations.
        /// </summary>
        /// <value>
        /// The default timeout.
        /// </value>
        protected TimeSpan Timeout { get; set; }

        /// <summary>
        /// Initializes a new instance of the <see cref="BaseCommandLineVersionControlProvider"/> class.
        /// </summary>
        /// <param name="fileName">The value to use for <see cref="FileName"/>.</param>
        protected BaseCommandLineVersionControlProvider(string fileName)
        {
            FileName = fileName;
            Timeout = TimeSpan.FromMilliseconds(defaultTimeoutMilliseconds);
        }

        /// <summary>
        /// Builds the command line arguments.
        /// </summary>
        /// <param name="arguments">The arguments.</param>
        /// <returns></returns>
        public abstract string BuildCommandLineArguments(VersionControlArguments arguments);

        /// <summary>
        /// Gets or sets the executable filename.
        /// </summary>
        /// <value>
        /// The executable filename.
        /// </value>
        public virtual string FileName { get; protected set; }

        /// <summary>
        /// Maps the version control source path from a local working path.
        /// </summary>
        /// <param name="localPath">The local path.</param>
        /// <param name="args">The args.</param>
        /// <returns></returns>
        public abstract string MapVersionControlSourcePath(string localPath, VersionControlArguments args);
    }
}