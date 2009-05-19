using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.IO;
using System.Text.RegularExpressions;
using System.Web;

namespace Foundation.Services
{
    public class UriUtility : IUriUtility
    {
        #region IUriUtility Members

        /// <summary>
        /// Maps a relative and/or tilde ("~/") path to the local directory
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public string MapPath(string path)
        {
            if( path.StartsWith("~") )
            {
                if( HttpContext.Current == null )
                {
                    // Assume we're running unit tests, without an HTTP Context
                    path = ConfigurationManager.AppSettings["web.physical.dir"] + path.Substring(1);
                }
                else
                {
                    // Running as a web application
                    path = HttpContext.Current.Server.MapPath("~") + path.Substring(1);
                }
            }

            return Path.GetFullPath(path);
        }

        public string MapUrl(string url)
        {
            return VirtualPathUtility.ToAbsolute(url);
        }

        /// <summary>
        /// Combines any number of directories with the path separator and returns the
        /// resulting concacenated path
        /// </summary>
        /// <example><code>
        /// // Results in "D:\RootDir\SubDir1\SubDir2\SubDir3"
        /// string path = BuildPath("D:\RootDir", "SubDir1", "SubDir2", "/SubDir3");
        /// </code>
        /// </example>
        /// <param name="directories">A list of directories / subdirectories</param>
        /// <returns></returns>
        public string BuildPath(params object[] directories)
        {
            // Convert the parameter list into strings (allowing any type to
            // be passed as a parameter)
            var dirs = new List<object>(directories).ConvertAll(o => o == null ? string.Empty : o.ToString());

            var result = string.Join(Path.DirectorySeparatorChar.ToString(), dirs.ToArray());

            return TidyPath(result);
        }

        /// <summary>
        /// Creates a relative or absolute URL from 1 or more parts, delimiting each
        /// part with a forward slash. Backslashes are replaced with forward slashes
        /// and duplicate forward slashes are removed.
        /// </summary>
        /// <param name="parts"></param>
        /// <returns></returns>
        public string BuildUrl(params object[] parts)
        {
            // Convert the parameter list into strings (allowing any type to
            // be passed as a parameter)
            var dirs = new List<object>(parts).ConvertAll(o => o == null ? string.Empty : o.ToString());

            var result = string.Join("/", dirs.ToArray());

            return CommonUtilities.TidyUrl(result);
        }

        /// <summary>
        /// Trims trailing and leading slashes and backslashes
        /// from a string (presumably a partial path)
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public string TrimSlashes(string path)
        {
            return TrimSlashes(path, true, true);
        }

        /// <summary>
        /// Trims trailing slashes and backslashes
        /// from a string (presumably a partial path)
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public string TrimTrailingSlashes(string path)
        {
            return TrimSlashes(path, false, true);
        }

        /// <summary>
        /// Trims leading slashes and backslashes
        /// from a string (presumably a partial path)
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public string TrimLeadingSlashes(string path)
        {
            return TrimSlashes(path, true, false);
        }

        /// <summary>
        /// Tidies a directory path by replacing forward
        /// slashes with backslashes
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public string TidyPath(string path)
        {
            // Replace all forward slashes with backslashes
            path = path.Replace("/", @"\");

            // Remove duplicate backslashes
            while( path.IndexOf(@"\\") > -1 )
            {
                path = path.Replace(@"\\", @"\");
            }

            return path;
        }

        #endregion

        public string UrlFromTitle(string title)
        {
            var result = Regex.Replace(title.Replace(" ", "-").ToLower(CultureInfo.CurrentCulture), @"[^0-9\-a-z]", "");

            while( result.IndexOf("--") > -1 )
            {
                result = result.Replace("--", "-");
            }

            return result;
        }

        /// <summary>
        /// Optionally trims trailing and leading slashes and backslashes
        /// from a string (presumably a partial path)
        /// </summary>
        /// <param name="path"></param>
        /// <param name="leading">Trim leading slashes?</param>
        /// <param name="trailing">Trim trailing slashes?</param>
        /// <returns></returns>
        protected static string TrimSlashes(string path, bool leading, bool trailing)
        {
            if( string.IsNullOrEmpty(path) ) return string.Empty;

            if( trailing )
            {
                while( path.EndsWith("/") || path.EndsWith("\\") )
                {
                    path = path.Substring(0, path.Length - 1);
                }
            }

            if( leading )
            {
                while( path.StartsWith("/") || path.StartsWith("\\") )
                {
                    path = path.Substring(1);
                }
            }

            return path;
        }
    }
}