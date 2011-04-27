using System;
using System.Collections.Generic;
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
            
            // The project name is the first part of the path
            args.Project = Uri.UnescapeDataString(uri.Segments[1]).Trim('/', '\\');

            // Query string arguments
            var queryStringArgs = ParseQueryStringArgs(uri);

            if( queryStringArgs.ContainsKey("label")) args.Label = Uri.UnescapeDataString(queryStringArgs["label"]);
            if (queryStringArgs.ContainsKey("destinationpath")) args.DestinationPath = Uri.UnescapeDataString(queryStringArgs["destinationpath"]);

            return args;
        }

        static IDictionary<string,string> ParseQueryStringArgs(Uri uri)
        {
            var dictionary = new Dictionary<string, string>();

            if (uri.Query.IsNullOrEmpty()) return dictionary;

            var parts = uri.Query.Substring(1).Split("&", StringSplitOptions.RemoveEmptyEntries);

            foreach (var part in parts)
            {
                var keyAndValue = part.Split("=", StringSplitOptions.RemoveEmptyEntries);
                dictionary.Add(Uri.UnescapeDataString(keyAndValue[0].ToLowerInvariant()), Uri.UnescapeDataString(keyAndValue[1]));
            }
            return dictionary;
        }
    }
}