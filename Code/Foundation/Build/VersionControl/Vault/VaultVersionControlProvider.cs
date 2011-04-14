using System;
using System.Text;
using Foundation.ExtensionMethods;
using Foundation.Services;

namespace Foundation.Build.VersionControl.Vault
{
    public class VaultVersionControlProvider : BaseCommandLineVersionControlProvider
    {
        public VaultVersionControlProvider(string filename) : base(filename) {}

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
        /// Builds the command line arguments.
        /// </summary>
        /// <param name="arguments">The arguments.</param>
        /// <returns></returns>
        public override string BuildCommandLineArguments(VersionControlArguments arguments)
        {
            var sb = new StringBuilder();

            // What command are we doing?
            sb.Append(OperationToVaultCommand(arguments.Operation));

            sb.Append(" -host ").Append(arguments.Server);

            // Add the security credentials if specified
            if (arguments.Credentials != null)
            {
                sb.Append(" -user ").Append(arguments.Credentials.UserName);
                sb.Append(" -password ").Append(arguments.Credentials.Password);
            }

            // The Project argument acts as the repository name
            sb.Append(" -repository \"").Append(arguments.Project).Append('"');

            // If the argument is the version, then add that to the arguments.
            if (!arguments.Version.IsNullOrEmpty()) sb.Append(" ").Append(arguments.Version);

            // The source path / file
            sb.Append(" \"").Append(arguments.SourcePath).Append('"');

            // Destination
            sb.Append(" \"").Append(arguments.DestinationPath).Append('"');

            return sb.ToString();
        }

        internal static string OperationToVaultCommand(VersionControlOperation operation)
        {
            switch (operation)
            {
                case VersionControlOperation.None:
                    throw new ArgumentException("None is not a valid Vault version control operation", "operation");

                case VersionControlOperation.Get:
                    return "getversion";

                default:
                    throw new ArgumentOutOfRangeException("operation");
            }
        }
    }
}