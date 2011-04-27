using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;

namespace Foundation.ExtensionMethods
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
        /// Returns true if the string is null or empty. If the string is just
        /// whitespace, then it will also be considered empty.
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        [DebuggerStepThrough]
        public static bool IsNullOrEmpty(this string value)
        {
// ReSharper disable ReplaceWithStringIsNullOrEmpty
            if (value == null || value.Length == 0) return true;
// ReSharper restore ReplaceWithStringIsNullOrEmpty
            return value.All(character => char.IsWhiteSpace(character));
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

        public static IDictionary<string,string> ToDictionary(this string value, char entryDelimiter, char keyValueDelimiter)
        {
            var result = new Dictionary<string, string>();
            
            var entries = value.ToList(entryDelimiter);

            foreach (var propertyOverride in entries)
            {
                var parts = propertyOverride.Trim().Split(new[] { keyValueDelimiter });
                if (parts.Length < 2) continue;

                var keyPart = parts[0].Trim();
                var valuePart = parts[1].Trim();

                result[keyPart] = valuePart;
            }

            return result;
        }

        public static IEnumerable<string> ToList(this string value, char delimiter)
        {
            return value.Split(new[] { delimiter }, StringSplitOptions.RemoveEmptyEntries);
        }

        public static bool EndsWith(this string value, char character)
        {
            var thisLen = value.Length;
            if (thisLen != 0)
            {
                if (value[thisLen - 1] == character) return true;
            }
            return false;
        }

        /// <summary>
        /// Returns a substring of an existing string, starting at the specified index,
        /// and returning the rest of the string or up to the first occurance of
        /// a string specified by <paramref name="stopAtString"/>.
        /// </summary>
        /// <param name="value">The string value to return a substring from.</param>
        /// <param name="startIndex">The start index.</param>
        /// <param name="stopAtString">The string to cut the substring off at.
        /// If this string isn't encountered, the rest of <paramref name="value"/> will be returned.</param>
        /// <returns></returns>
        public static string Substring(this string value, int startIndex, string stopAtString)
        {
            var firstIndexOfStopString = value.IndexOf(stopAtString);

            if (firstIndexOfStopString > -1)
            {
                return value.Substring(startIndex, firstIndexOfStopString - startIndex);
            }

            return value.Substring(startIndex);
        }

        public static string[] Split(this string value, string delimiter, StringSplitOptions options)
        {
            return value.Split(new []{ delimiter }, options);
        }

        public static string[] Split(this string value, char delimiter, StringSplitOptions options)
        {
            return value.Split(new[] { delimiter }, options);
        }
    }
}