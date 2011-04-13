using System.Globalization;
using System.Net;
using System.Text;
using Foundation.ExtensionMethods;

namespace Foundation.Build.VersionControl
{
    /// <summary>
    /// Common version control operation arguments. This should allow you to specify
    /// a common version control operation, including connection details, regardless
    /// of the version control provider.
    /// </summary>
    public class VersionControlArguments
    {
        /// <summary>
        /// Gets or sets the server name.
        /// </summary>
        /// <value>
        /// The server name.
        /// </value>
        public string Server { get; set; }

        /// <summary>
        /// Gets or sets the user credentials to use when communicating with the <see cref="Server"/>.
        /// </summary>
        /// <value>
        /// The user credentials.
        /// </value>
        public NetworkCredential Credentials { get; set; }

        /// <summary>
        /// Gets or sets the name of the project or repository.
        /// </summary>
        /// <value>
        /// The name of the project or repository.
        /// </value>
        public string Project { get; set; }

        /// <summary>
        /// Gets or sets the source path of the <see cref="Operation"/>.
        /// </summary>
        /// <value>
        /// The source path of the <see cref="Operation"/>.
        /// </value>
        public string SourcePath { get; set; }

        /// <summary>
        /// Gets or sets the destination path for the <see cref="Operation"/>.
        /// </summary>
        /// <value>
        /// The destination path for the <see cref="Operation"/>.
        /// </value>
        public string DestinationPath { get; set; }

        /// <summary>
        /// Gets or sets the type of the <see cref="Operation"/>.
        /// </summary>
        /// <value>
        /// The type of the <see cref="Operation"/>.
        /// </value>
        public VersionControlOperation Operation { get; set; }

        /// <summary>
        /// Gets or sets the version number for the <see cref="Operation"/>.
        /// </summary>
        /// <value>
        /// The version for the <see cref="Operation"/>.
        /// </value>
        public string Version { get; set; }

        /// <summary>
        /// Gets or sets the name of the version control provider.
        /// </summary>
        /// <value>
        /// The name of the version control provider.
        /// </value>
        public string Provider { get; set; }

        /// <summary>
        /// Returns a <see cref="T:System.String"/> that represents the current <see cref="VersionControlArguments"/>.
        /// </summary>
        /// <returns>
        /// A <see cref="T:System.String"/> that represents the current <see cref="VersionControlArguments"/>.
        /// </returns>
        /// <filterpriority>2</filterpriority>
        public override string ToString()
        {
            var sb = new StringBuilder(100);

            // The provider name will serve as the "protocol" / scheme
            sb.Append(Provider.ToLower(CultureInfo.CurrentCulture)).Append("://");

            // Handle credentials
            if( Credentials != null )
            {
                sb.Append(Credentials.UserName).Append(":")
                    .Append(Credentials.Password).Append("@");
            }

            // The server name will act as the host name / domain
            sb.Append(Server).Append("/");

            // The project is the base path
            sb.Append(Project);
            if(!Project.EndsWith('/') || !Project.EndsWith('\\')) sb.Append("/");

            // Next is the source path
            sb.Append(SourcePath).Append("?");

            // The operation is in the query string
            sb.Append("operation=").Append(Operation).Append("&");

            // So is the destination
            sb.Append("destination=").Append(DestinationPath);

            // The version will be after the hash
            sb.Append("#").Append(Version);

            return sb.ToString();
        }
    }
}