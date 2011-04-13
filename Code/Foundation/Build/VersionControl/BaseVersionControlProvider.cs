using System;
using Foundation.ExtensionMethods;
using Foundation.Services;

namespace Foundation.Build.VersionControl
{
    public abstract class BaseVersionControlProvider : IVersionControlProvider
    {
        /// <summary>
        /// Executes a version control operation with the specified arguments.
        /// </summary>
        /// <param name="arguments">The arguments.</param>
        /// <returns>Execution results.</returns>
        public IServiceResult Execute(VersionControlArguments arguments)
        {
            if (arguments == null) throw new ArgumentNullException("arguments");

            ValidateArguments(arguments);

            switch (arguments.Operation)
            {
                case VersionControlOperation.None:
                    throw new ArgumentException("You must specify a valid source control operation for the VersionControlArguments (the Operation property is set to None)", "arguments");
                    
                case VersionControlOperation.Get:
                    return ExecuteGet(arguments);
                    
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }

        /// <summary>
        /// Validates the arguments.
        /// </summary>
        /// <param name="arguments">The arguments.</param>
        protected internal virtual void ValidateArguments(VersionControlArguments arguments)
        {
            if( arguments.Server.IsNullOrEmpty()) throw new ArgumentException("You must specify a Server", "arguments");
        }

        /// <summary>
        /// Executes a get operation.
        /// </summary>
        /// <param name="arguments">The arguments.</param>
        /// <returns></returns>
        protected abstract IServiceResult ExecuteGet(VersionControlArguments arguments);
    }
}