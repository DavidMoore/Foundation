using System;
using System.Globalization;

namespace Foundation.Extensions
{
    /// <summary>
    /// Utility extension methods for strings
    /// </summary>
    public static class StringExtensionMethods
    {
        /// <summary>
        /// Converts the string to pascal case e.g. ThisIsPascalCase
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static string ToPascalCase(this string value)
        {
            var letters = value.ToCharArray();
            letters[0] = Char.ToUpperInvariant(letters[0]);
            return new string(letters);
        }

        /// <summary>
        /// Converts the string to camel case e.g. thisIsCamelCase
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static string ToCamelCase(this string value)
        {
            var letters = value.ToCharArray();
            letters[0] = Char.ToLowerInvariant(letters[0]);
            return new string(letters);
        }

        /// <summary>
        /// Converts the string to title case e.g. "This Is Title Case"
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static string ToTitleCase(this string value)
        {
            return CultureInfo.InvariantCulture.TextInfo.ToTitleCase(value);
        }

        /// <summary>
        /// Returns true if the string is null or empty
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsNullOrEmpty(this string value)
        {
            return string.IsNullOrEmpty(value);
        }

        /// <summary>
        /// Returns true if at least one instance of the specified needle string can be found in the haystack string
        /// </summary>
        /// <param name="haystack"></param>
        /// <param name="needle"></param>
        /// <returns></returns>
        public static bool Contains(this string haystack, string needle)
        {
            return haystack.IndexOf(needle, StringComparison.OrdinalIgnoreCase) > -1;
        }

        /// <summary>
        /// Strips a string from the start of a string, if found
        /// </summary>
        /// <param name="value"></param>
        /// <param name="strip"></param>
        /// <returns></returns>
        public static string StripLeft(this string value, string strip)
        {
            if( !value.StartsWith(strip, StringComparison.OrdinalIgnoreCase) ) return value;

            return value.Substring(strip.Length);
        }

        /// <summary>
        /// Shortcut for string.Format(value, args)
        /// </summary>
        /// <param name="value"></param>
        /// <param name="args"></param>
        /// <returns></returns>
        public static string StringFormat(this string value, params object[] args)
        {
            return string.Format(value, args);
        }
    }
}