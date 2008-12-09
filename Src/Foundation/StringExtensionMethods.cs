using System;

namespace Foundation
{
    /// <summary>
    /// Utility extension methods for strings
    /// </summary>
    public static class StringExtensionMethods
    {
        public static string ToPascalCase(this string value)
        {
            var letters = value.ToCharArray();
            letters[0] = Char.ToUpperInvariant(letters[0]);
            return new string(letters);
        }

        public static string ToCamelCase(this string value)
        {
            var letters = value.ToCharArray();
            letters[0] = Char.ToLowerInvariant(letters[0]);
            return new string(letters);
        }
    }
}