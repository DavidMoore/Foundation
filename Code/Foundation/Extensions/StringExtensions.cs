using System;
using System.Diagnostics;
using System.Globalization;
using System.Text.RegularExpressions;

namespace Foundation.Extensions
{
    /// <summary>
    /// Utility extension methods for strings
    /// </summary>
    public static class StringExtensions
    {
        static readonly Regex emailRegex = new Regex(@"^([\w\!\#$\%\&\'\*\+\-\/\=\?\^\`{\|\}\~]+\.)*[\w\!\#$\%\&\'\*\+\-\/\=\?\^\`{\|\}\~]+@((((([a-z0-9]{1}[a-z0-9\-]{0,62}[a-z0-9]{1})|[a-z])\.)+[a-z]{2,6})|(\d{1,3}\.){3}\d{1,3}(\:\d{1,5})?)$",RegexOptions.IgnoreCase | RegexOptions.Compiled);

        /// <summary>
        /// Converts the string to pascal case e.g. ThisIsPascalCase
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static string ToPascalCase(this string value)
        {
            if (value == null) throw new ArgumentNullException("value");
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
            if (value == null) throw new ArgumentNullException("value");
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
            if (value == null) throw new ArgumentNullException("value");
            return CultureInfo.InvariantCulture.TextInfo.ToTitleCase(value);
        }

        /// <summary>
        /// Returns true if the string is null or empty
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        [DebuggerStepThrough]
        public static bool IsNullOrEmpty(this string value)
        {
            return string.IsNullOrEmpty(value) || value.Trim().Length == 0;
        }

        /// <summary>
        /// Returns true if at least one instance of the specified needle string can be found in the haystack string
        /// </summary>
        /// <param name="haystack"></param>
        /// <param name="needle"></param>
        /// <returns></returns>
        public static bool ContainsCaseInsensitive(this string haystack, string needle)
        {
            if (haystack == null) throw new ArgumentNullException("haystack");
            if (needle == null) return false;

            return haystack.IndexOf(needle, StringComparison.OrdinalIgnoreCase) > -1;
        }

        /// <summary>
        /// Compares the string to another, using <see cref="StringComparison.OrdinalIgnoreCase"/>
        /// </summary>
        /// <param name="value">The string value to compare with another</param>
        /// <param name="comparisonValue">The value to compare with <paramref name="value"/></param>
        /// <returns></returns>
        public static int CompareToOrdinalIgnoreCase(this string value, string comparisonValue)
        {
            if (value == null) throw new ArgumentNullException("value");
            return string.Compare(value, comparisonValue, StringComparison.OrdinalIgnoreCase);
        }

        /// <summary>
        /// Formats the specified string using <see cref="CultureInfo.CurrentCulture"/>
        /// </summary>
        /// <param name="format"></param>
        /// <param name="args"></param>
        /// <returns></returns>
        public static string FormatCurrentCulture(this string format, params object[] args)
        {
            if (format == null) throw new ArgumentNullException("format");
            return string.Format(CultureInfo.CurrentCulture, format, args);
        }

        /// <summary>
        /// Strips a string from the start of a string, if found
        /// </summary>
        /// <param name="value"></param>
        /// <param name="strip"></param>
        /// <returns></returns>
        public static string StripLeft(this string value, string strip)
        {
            if (value == null) throw new ArgumentNullException("value");
            if (strip == null) throw new ArgumentNullException("strip");
            return !value.StartsWith(strip, StringComparison.OrdinalIgnoreCase) ? value : value.Substring(strip.Length);
        }

        /// <summary>
        /// Shortcut for string.Format(CultureInfo.CurrentCulture, value, args)
        /// </summary>
        /// <param name="value"></param>
        /// <param name="args"></param>
        /// <returns></returns>
        public static string StringFormat(this string value, params object[] args)
        {
            if (value == null) throw new ArgumentNullException("value");
            return string.Format(CultureInfo.CurrentCulture, value, args);
        }

        /// <summary>
        /// Determines whether [is valid email] [the specified value].
        /// </summary>
        /// <param name="value">The value.</param>
        /// <returns>
        /// 	<c>true</c> if [is valid email] [the specified value]; otherwise, <c>false</c>.
        /// </returns>
        public static bool IsValidEmail(this string value)
        {
            return emailRegex.IsMatch(value);
        }
    }
}