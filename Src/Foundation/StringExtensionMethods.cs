using System;
using System.Globalization;

namespace Foundation
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
    }
}