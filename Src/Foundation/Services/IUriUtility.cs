namespace Foundation.Services
{
    /// <summary>
    /// Methods for manipulating, tidying and resolving URIs
    /// </summary>
    public interface IUriUtility
    {
        /// <summary>
        /// Maps a relative and/or tilde ("~/") path to the local directory
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        string MapPath(string path);

        /// <summary>
        /// Maps a relative and/or tilde ("~") path to the web application root
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        string MapUrl(string url);

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
        string BuildPath(params object[] directories);

        /// <summary>
        /// Creates a relative or absolute URL from 1 or more parts, delimiting each
        /// part with a forward slash. Backslashes are replaced with forward slashes
        /// and duplicate forward slashes are removed.
        /// </summary>
        /// <param name="parts"></param>
        /// <returns></returns>
        string BuildUrl(params object[] parts);

        /// <summary>
        /// Trims trailing and leading slashes and backslashes
        /// from a string (presumably a partial path)
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        string TrimSlashes(string path);

        /// <summary>
        /// Trims trailing slashes and backslashes
        /// from a string (presumably a partial path)
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        string TrimTrailingSlashes(string path);

        /// <summary>
        /// Trims leading slashes and backslashes
        /// from a string (presumably a partial path)
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        string TrimLeadingSlashes(string path);

        /// <summary>
        /// Tidies a directory path by replacing forward
        /// slashes with backslashes
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        string TidyPath(string path);
    }
}