using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using Foundation.ExtensionMethods;

namespace Foundation.Windows
{
    public static class ArgumentInfoParser
    {
        const string argumentSplitRegexValue = "(?<arg>[^\" ]+)|\"(?<arg>[^\"]+)\"";
        static readonly Regex argumentSplitRegex = new Regex(argumentSplitRegexValue, RegexOptions.Compiled);

        /// <summary>
        /// Splits a string of arguments into a list of separate argument strings.
        /// </summary>
        /// <param name="args">The arguments.</param>
        /// <returns></returns>
        internal static IEnumerable<string> SplitArguments(string args)
        {
            return from Match match in argumentSplitRegex.Matches(args)
                   select match.Groups["arg"].Value;
        }

        /// <summary>
        /// Parses all of the specified arguments into a dictionary.
        /// </summary>
        /// <param name="args">The arguments to parse.</param>
        public static IDictionary<string, ArgumentInfo> Parse(string args)
        {
            if (args.IsNullOrEmpty()) return new Dictionary<string, ArgumentInfo>(0);

            return SplitArguments(args)
                .Select(ParseArgument)
                .ToDictionary(info => info.Name);
        }

        public static ArgumentInfo ParseArgument(string arg)
        {
            if( arg.IsNullOrEmpty()) throw new ArgumentException("Argument cannot be null or empty", "arg");

            // Trim off any leading argument characters
            arg = arg.TrimStart(new[]
            {
                '/', '-'
            });

            // Split the name and value
            var parts = arg.Split(new[]
            {
                ':', '='
            });

            var name = parts[0];

            var value = parts.Length > 1 ? parts[1] : null;

            return new ArgumentInfo(name, value);
        }
    }
}