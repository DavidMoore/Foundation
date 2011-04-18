using System;
using System.Net;
using Foundation.ExtensionMethods;

namespace Foundation.Build.VersionControl
{
    /// <summary>
    /// Converts a <see cref="VersionControlArguments"/> instance to and from
    /// other various values.
    /// </summary>
    public static class VersionControlArgumentsConverter
    {
        /// <summary>
        /// Takes the arguments in the form of a <see cref="Uri"/> and
        /// converts them to a <see cref="VersionControlArguments"/>.
        /// </summary>
        /// <param name="uri">The URI specifying the arguments.</param>
        /// <returns></returns>
        public static VersionControlArguments FromUri(Uri uri)
        {
            if (uri == null) throw new ArgumentNullException("uri");

            var args = new VersionControlArguments
            {
                Provider = uri.Scheme,
                Server = uri.GetComponents(UriComponents.HostAndPort, UriFormat.UriEscaped)
            };

            if (!uri.UserInfo.IsNullOrEmpty())
            {
                var parts = uri.UserInfo.Split(new[] { ':' });
                var userName = parts[0];
                var password = parts[1];

                args.Credentials = new NetworkCredential(userName, password);
            }

            var path = uri.PathAndQuery;

            // The project name is the first part of the path
            args.Project = uri.Segments[1];

            return args;
        }
    }
}