using System;
using System.IO;
using System.Net;
using System.Text;
using Foundation.Build.VersionControl;
using Foundation.ExtensionMethods;

namespace Foundation.Build
{
    public class SourceIndexer
    {
        internal readonly BaseCommandLineVersionControlProvider versionControlProvider;
        readonly VersionControlArguments args;

        /// <summary>
        /// The name of the variable containing he original
        /// local filename when the build occurred, e.g. the working path
        /// on the build server.
        /// </summary>
        const string OriginalLocalPath = "%VAR1%";

        /// <summary>
        /// The name of the variable containing the version control source folder.
        /// </summary>
        const string VcsSourcePath = "%VAR2%";

        /// <summary>
        /// The name of the variable containing the label.
        /// </summary>
        const string VcsLabel = "%VAR3%";

        const string VcsExecutable = "%VCS_EXECUTABLE%";
        const string VcsUsername = "%VCS_USERNAME%";
        const string VcsPassword = "%VCS_PASSWORD%";
        
        const string VcsProject = "%VCS_PROJECT%";
        const string VcsProvider = "%VCS_PROVIDER%";
        const string VcsServer = "%VCS_SERVER%";

        internal static readonly string VcsDestinationPath = 
            @"%TARG%\{0}%fnbksl%({1})\%fnfile%({2})".StringFormat( VcsLabel, VcsSourcePath, OriginalLocalPath );

        internal static readonly string VcsSourceFullPath = @"{0}/%fnfile%({1})".StringFormat(VcsSourcePath, OriginalLocalPath);

        public SourceIndexer(BaseCommandLineVersionControlProvider versionControlProvider, VersionControlArguments args)
        {
            this.versionControlProvider = versionControlProvider;
            this.args = args;
        }

        public string GetVersionCommand()
        {
            var getArgs = new VersionControlArguments
            {
                Credentials = new NetworkCredential(VcsUsername, VcsPassword),
                DestinationPath = VcsDestinationPath,
                Label = VcsLabel,
                Operation = VersionControlOperation.Get,
                Project = VcsProject,
                Provider = VcsProvider,
                Server = VcsServer,
                SourcePath = VcsSourceFullPath
            };

            var commandLine = versionControlProvider.BuildCommandLineArguments(getArgs);

            return "\"{0}\" {1}".StringFormat(VcsExecutable, commandLine);
        }

        public string GetVersionIndexForFile(string localPath)
        {
            var result = versionControlProvider.MapVersionControlSourcePath(localPath, args);

            if (result.IsNullOrEmpty()) return null;
            
            return "{0}*{1}*{2}".StringFormat(localPath.Trim(), result.Trim(), args.Label.Trim());
        }

        public string GetVariableBlock()
        {
            var sb = new StringBuilder();

            sb.AppendLine("SRCSRV: variables ------------------------------------------");

            sb.AppendLine("VCS_EXECUTABLE=" + versionControlProvider.FileName);

            if (args.Credentials != null)
            {
                sb.AppendLine("VCS_USERNAME=" + args.Credentials.UserName);
                sb.AppendLine("VCS_PASSWORD=" + args.Credentials.Password);
            }

            sb.AppendLine("VCS_SERVER=" + args.Server);
            sb.AppendLine("VCS_PROJECT=" + args.Project);

            // This variable is a required one, and is responsible for building up the
            // target path for the source file once it's been grabbed from the VCS.
            // The target path should be version-specific, so that you can extract
            // different versions of the same source file without overwriting.
            // Included in the variables is a variable called TARG which is the base
            // extract target path, provided by the debugger.
            sb.AppendLine("SRCSRVTRG=%VCS_EXTRACT_TARGET%");
            sb.AppendLine("VCS_EXTRACT_CMD=" + GetVersionCommand());

            // The base command for extracting a specified version of a specified file
            // from the VCS. This can use any of the defined variables, environment variables
            // and the numbered variables that come from the source file line.
            sb.AppendLine("SRCSRVCMD=%VCS_EXTRACT_CMD%");
            sb.AppendLine("VCS_EXTRACT_TARGET=" + VcsDestinationPath);

            return sb.ToString();
        }

        public string GetIniBlock()
        {
            var sb = new StringBuilder();

            sb.AppendLine("SRCSRV: ini ------------------------------------------------");
            sb.AppendLine("VERSION=1");
            sb.AppendLine("VERCTRL=" + args.Provider);
            sb.AppendLine("DATETIME=" + DateTime.Now.ToUniversalTime().ToString("u"));

            return sb.ToString();
        }
    }
}