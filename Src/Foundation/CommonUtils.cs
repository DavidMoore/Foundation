using System.Web;

namespace Foundation
{
    /// <summary>
    /// Some common utility methods, taken from the corresponding internal Castle class
    /// </summary>
    public class CommonUtils
    {
        /// <summary>
        /// Escapes a content replacing line breaks with html break lines.
        /// </summary>
        /// <param name="content">The text to escape.</param>
        /// <returns>The URL encoded and JavaScript escaped text.</returns>
        public static string LineBreaksToHtml(string content)
        {
            return IsNullOrEmpty(content) ? string.Empty : content.Replace("\r", "").Replace("\n", "<br />");
        }

        /// <summary>
        /// HTML encodes a string and returns the encoded string, optionally
        /// replacing the line breaks with HTML line breaks  
        /// </summary>
        /// <param name="content">The text string to HTML encode.</param>
        /// <param name="lineBreaksToHtml">Should linebreaks be converted to HTML line breaks?</param>
        /// <returns>The HTML encoded text.</returns>
        public static string HtmlEncode(string content, bool lineBreaksToHtml)
        {
            if( IsNullOrEmpty(content) ) return string.Empty;
            content = HttpUtility.HtmlEncode(content);
            return lineBreaksToHtml ? LineBreaksToHtml(content) : content;
        }

        /// <summary>
        /// Encodes a string for a URL, but leaving path delimiters intact
        /// </summary>
        /// <param name="path"></param>
        /// <returns></returns>
        public static string UrlPathEncode(string path)
        {
            return HttpUtility.UrlPathEncode(path);
        }

        /// <summary>
        /// HTML encodes a string and returns the encoded string.  
        /// </summary>
        /// <param name="content">The text string to HTML encode.</param>
        /// <returns>The HTML encoded text.</returns>
        public static string HtmlEncode(string content)
        {
            return HtmlEncode(content, false);
        }

        /// <summary>
        /// Tidies up a URL, correcting mistakes such as duplicate slashes and back-slashes
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        public static string TidyUrl(string url)
        {
            if( IsNullOrEmpty(url) ) return url;

            // Replace all back slashes with forward slashes
            url = url.Replace("\\", "/");

            // Remove duplicate forward slashes
            while( url.IndexOf("//") > -1 ) url = url.Replace("//", "/");

            return url;
        }

        /// <summary>
        /// The passed object is converted to a string and returns
        /// true if the object was null, or the resulting string is
        /// empty or only contains whitespace.
        /// </summary>
        /// <param name="value">An object value</param>
        /// <returns></returns>
        public static bool IsNullOrEmpty(object value)
        {
            if( value == null ) return true;
            return value.ToString().Trim().Length == 0;
        }

        /// <summary>
        /// Returns true if the string is null, or is
        /// empty or only contains whitespace.
        /// </summary>
        /// <param name="value">A string value</param>
        /// <returns></returns>
        public static bool IsNullOrEmpty(string value)
        {
            if( value == null ) return true;
            return value.Trim().Length == 0;
        }
    }
}