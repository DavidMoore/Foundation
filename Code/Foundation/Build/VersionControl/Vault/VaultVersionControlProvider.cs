using System;
using System.Diagnostics;
using System.IO;
using System.Text;
using Foundation.ExtensionMethods;
using Foundation.Services;
using Foundation.Windows;

namespace Foundation.Build.VersionControl.Vault
{
    public class VaultVersionControlProvider : BaseCommandLineVersionControlProvider
    {
        public VaultVersionControlProvider(string fileName) : base(fileName) {}

        public override IServiceResult ParseResult(VersionControlArguments args, IProcessResult processResult)
        {
            var serializer = new VaultResultSerializer();

            var vaultResult = serializer.Deserialize(processResult.StandardOutput);

            if (!vaultResult.Success)
            {
                return new ServiceResult(ServiceResultCode.Error);
            }
            
            var result = new ServiceResult(ServiceResultCode.Success);

            switch (args.Operation)
            {
                case VersionControlOperation.GetLocalVersion:

                    // Find the file we were trying to get the version for
                    foreach (var file in vaultResult.Folder.Files)
                    {
                        if (args.SourcePath.EndsWith(file.Name))
                        {
                            result.ResultValue = file.Version;
                        }
                    }
                    
                    break;

                default:
                    throw new ArgumentOutOfRangeException();
            }

            return result;
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
            sb.Append(OperationToVaultCommand(arguments));

            sb.Append(" -host \"").Append(arguments.Server).Append('"');

            // Add the security credentials if specified
            if (arguments.Credentials != null)
            {
                sb.Append(" -user \"").Append(arguments.Credentials.UserName).Append('"');
                sb.Append(" -password \"").Append(arguments.Credentials.Password).Append('"');
            }

            // The Project argument acts as the repository name
            sb.Append(" -repository \"").Append(arguments.Project).Append('"');

            // If we're getting a label and need a destination path, add that as an argument.            
            if (arguments.Operation == VersionControlOperation.Get 
                && !arguments.Label.IsNullOrEmpty() 
                && !arguments.DestinationPath.IsNullOrEmpty())
            {
                sb.Append(" -destpath \"");
                
                // The destination needs to be a folder, so if this is a filename, get the folder instead.
                if( arguments.DestinationPath.Contains("/") || arguments.DestinationPath.Contains("\\") )
                {
                    sb.Append(Path.GetDirectoryName(arguments.DestinationPath));
                }
                else
                {
                    sb.Append(arguments.DestinationPath);
                }
                sb.Append('"');
            }

            // If the argument is the version, then add that to the arguments.
            if (!arguments.Version.IsNullOrEmpty()) sb.Append(" ").Append(arguments.Version);

            // The source path / file
            if (!arguments.SourcePath.IsNullOrEmpty())
            {
                sb.Append(" \"$");

                // Remove the repository root prefix ($) and / as we've already added it
                var sourcePath = arguments.SourcePath.TrimStart('$', '/', '\\').Replace('\\', '/');
                
                // If this is a GetLocalVersion operation, we can only list versions of all 
                // files in a folder and not a specific file version.
                switch(arguments.Operation)
                {
                    case VersionControlOperation.GetLocalVersion:
                        sb.Append(Path.GetDirectoryName(sourcePath));
                        break;

                    default:
                        sb.Append(sourcePath);
                        break;
                }

                sb.Append('"');
            }

            // Destination
            if( !arguments.DestinationPath.IsNullOrEmpty())
            {
                // If we're getting a label, the destination will have already been specified.
                if (arguments.Operation != VersionControlOperation.Get || arguments.Label.IsNullOrEmpty())
                {
                    sb.Append(" \"").Append(arguments.DestinationPath).Append('"');
                }
            }

            // The label
            if (!arguments.Label.IsNullOrEmpty()) sb.Append(" \"").Append(arguments.Label).Append('"');

            return sb.ToString();
        }

        public override string MapVersionControlSourcePath(string localPath, VersionControlArguments args)
        {
            if( args.DestinationPath.IsNullOrEmpty()) throw new ArgumentException("The DestinationPath is empty, so we cannot map a version control file if we have no working path.", "args");

            if (!localPath.StartsWith(args.DestinationPath,StringComparison.CurrentCultureIgnoreCase)) return null;

            var relativePath = localPath.Substring(args.DestinationPath.Length);

            // Ensure the path starts with a leading forward slash, removing
            // other slashes and the repository root character ($)
            relativePath = relativePath.TrimStart('$', '\\');
            if(!relativePath.StartsWith("/")) relativePath = "/" + relativePath;

            // Return a folder path, not a file path
            var result = Path.GetDirectoryName(relativePath);

            // Convert all back slashes to forward slashes
            return result.Replace(@"\", "/");
        }

        internal static string OperationToVaultCommand(VersionControlArguments args)
        {
            switch (args.Operation)
            {
                case VersionControlOperation.None:
                    throw new ArgumentException("None is not a valid Vault version control operation", "operation");

                case VersionControlOperation.Get:
                    // Are we getting a label or a version?
                    return !args.Label.IsNullOrEmpty() ? "getlabel" : "getversion";

                case VersionControlOperation.GetLocalVersion:
                    return "listfolder";

                default:
                    throw new ArgumentOutOfRangeException("operation");
            }
        }
    }
}