using System;
using Foundation.Services;

namespace Foundation.Build.VersionControl
{
    public abstract class BaseCommandLineVersionControlProvider : BaseVersionControlProvider
    {
        /// <summary>
        /// Executes a get operation.
        /// </summary>
        /// <param name="arguments">The arguments.</param>
        /// <returns></returns>
        protected override IServiceResult ExecuteGet(VersionControlArguments arguments)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="BaseCommandLineVersionControlProvider"/> class.
        /// </summary>
        /// <param name="filename">The value to use for <see cref="Filename"/>.</param>
        protected BaseCommandLineVersionControlProvider(string filename)
        {
            Filename = filename;
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
        public string Filename { get; protected set; }
    }
}