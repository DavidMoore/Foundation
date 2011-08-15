using System;
using System.Activities;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using System.Text.RegularExpressions;
using Foundation.Build.Activities.Properties;
using Foundation.ExtensionMethods;
using Microsoft.TeamFoundation;
using Microsoft.TeamFoundation.Build.Client;
using Microsoft.TeamFoundation.Build.Workflow.Activities;
using Microsoft.TeamFoundation.Build.Workflow.Design;

namespace Foundation.Build.Activities
{
    [BuildCategory]
    [BuildActivity(HostEnvironmentOption.Controller)]
    [Designer(typeof (TeamBuildBaseActivityDesigner))]
    [ToolboxBitmap(typeof (TeamBuildBaseActivityDesigner), "DefaultBuildIcon.png")]
    public sealed class UpdateBuildNumber : CodeActivity<string>
    {
        private static readonly Regex buildNumberWithRevision = new Regex(@"\$\(rev\:\.(r+)\)$", RegexOptions.IgnoreCase);
        private static readonly Regex dateFormat = new Regex(@"\$\(date\:([^\)]+)\)", RegexOptions.IgnoreCase);

        private static readonly string[] macroNames = new[]
                                                      {
                                                          "$(DayOfMonth)",
                                                          "$(Month)",
                                                          "$(Year:yy)",
                                                          "$(Year:yyyy)",
                                                          "$(Hours)",
                                                          "$(Minutes)",
                                                          "$(Seconds)",
                                                          "$(Rev:.rr)",
                                                          "$(Date:MMddyy)",
                                                          "$(DayOfYear)",
                                                          "$(BuildDefinitionName)",
                                                          "$(BuildID)",
                                                          "$(TeamProject)",
                                                          "$(YearsSince2010)"
                                                      };

        private static readonly Regex revisionFormat = new Regex(@"\$\(rev\:\.(r+)\)", RegexOptions.IgnoreCase);
        private static readonly Regex tokenFormat = new Regex(@"\$\([^\)]+\)");
        private readonly IBuildQueryProvider queryProvider;

        /// <summary>
        /// Initializes a new instance of the <see cref="UpdateBuildNumber"/> class.
        /// </summary>
        public UpdateBuildNumber() : this(new BuildQueryProvider()) {}

        /// <summary>
        /// Initializes a new instance of the <see cref="UpdateBuildNumber"/> class.
        /// </summary>
        /// <param name="queryProvider">The query provider.</param>
        public UpdateBuildNumber(IBuildQueryProvider queryProvider)
        {
            this.queryProvider = queryProvider;
        }

        [RequiredArgument]
        [Browsable(true)]
        [LocalizedCategory(typeof (Resources), "ActivityCategoryMiscellaneous")]
        [LocalizedDescription(typeof (Resources), "BuildNumberFormatDescription")]
        [DefaultValue((string) null)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public InArgument<string> BuildNumberFormat { get; set; }

        /// <summary>
        /// Caches the metadata.
        /// </summary>
        /// <param name="metadata">The metadata.</param>
        protected override void CacheMetadata(CodeActivityMetadata metadata)
        {
            base.CacheMetadata(metadata);
            metadata.RequireExtension<IBuildDetail>();
        }

        /// <summary>
        /// Executes the specified context.
        /// </summary>
        /// <param name="context">The context.</param>
        /// <returns></returns>
        protected override string Execute(CodeActivityContext context)
        {
            string stringVar = BuildNumberFormat.Get(context);

            if (string.IsNullOrWhiteSpace(stringVar))
                throw new ArgumentException("The BuildNumberFormat should not be null or empty!");

            var extension = context.GetExtension<IBuildDetail>();
            int num = 0;
            Label_0021:
            extension.BuildNumber = FormatStringToBuildNumber(stringVar, extension, null, false);
            try
            {
                extension.Save();
            }
            catch (BuildNumberAlreadyExistsException)
            {
                if (num++ >= 100)
                {
                    throw;
                }
                goto Label_0021;
            }
            return extension.BuildNumber;
        }

        public string ExpandToken(string token, DateTime now, IBuildDefinition buildDefinition)
        {
            return ExpandToken(token, string.Empty, null, now, buildDefinition, true);
        }

        public string ExpandToken(string token, string expandedPrefix, IBuildDetail buildDetail, DateTime now,
                                  IBuildDefinition buildDefinition, bool designTime)
        {
            if (string.Equals(token, macroNames[1], StringComparison.OrdinalIgnoreCase))
            {
                return now.ToString("MM", CultureInfo.CurrentCulture);
            }
            if (string.Equals(token, macroNames[2], StringComparison.OrdinalIgnoreCase))
            {
                return now.ToString("yy", CultureInfo.CurrentCulture);
            }
            if (string.Equals(token, macroNames[3], StringComparison.OrdinalIgnoreCase))
            {
                return now.ToString("yyyy", CultureInfo.CurrentCulture);
            }
            if (string.Equals(token, macroNames[4], StringComparison.OrdinalIgnoreCase))
            {
                return now.ToString("hh", CultureInfo.CurrentCulture);
            }
            if (string.Equals(token, macroNames[5], StringComparison.OrdinalIgnoreCase))
            {
                return now.ToString("mm", CultureInfo.CurrentCulture);
            }
            if (string.Equals(token, macroNames[6], StringComparison.OrdinalIgnoreCase))
            {
                return now.ToString("ss", CultureInfo.CurrentCulture);
            }
            if (string.Equals(token, macroNames[0], StringComparison.OrdinalIgnoreCase))
            {
                return now.ToString("dd", CultureInfo.CurrentCulture);
            }
            if (string.Equals(token, macroNames[13], StringComparison.OrdinalIgnoreCase))
            {
                return Convert.ToInt32(now.Year - 2010).ToString();
            }
            if (revisionFormat.IsMatch(token))
            {
                int length = revisionFormat.Match(token).Groups[1].Length;
                if (!designTime)
                {
                    int max = 0;
                    max = queryProvider.GetHighestExistingBuildNumber(expandedPrefix, buildDetail, length, max);
                    return ("." + PaddedString(max + 1, length));
                }
                return Resources.DesignTimeMacro_Revision.StringFormat(new object[] {"." + PaddedString(1, length)});
            }
            if (dateFormat.IsMatch(token))
            {
                string format = dateFormat.Match(token).Groups[1].Value;
                return now.ToString(format, CultureInfo.CurrentCulture);
            }
            if (string.Equals(token, macroNames[9], StringComparison.OrdinalIgnoreCase))
            {
                return PaddedString(now.DayOfYear, 3);
            }
            if (string.Equals(token, macroNames[12], StringComparison.OrdinalIgnoreCase))
            {
                if (!designTime)
                {
                    return buildDetail.BuildDefinition.TeamProject;
                }
                if (buildDefinition != null)
                {
                    return buildDefinition.TeamProject;
                }
                return token;
            }
            if (string.Equals(token, macroNames[10], StringComparison.OrdinalIgnoreCase))
            {
                if (!designTime)
                {
                    return buildDetail.BuildDefinition.Name;
                }
                if (buildDefinition != null)
                {
                    return buildDefinition.Name;
                }
                return token;
            }
            if (string.Equals(token, macroNames[11], StringComparison.OrdinalIgnoreCase))
            {
                if (!designTime)
                {
                    return LinkingUtilities.DecodeUri(buildDetail.Uri.ToString()).ToolSpecificId;
                }
                return Resources.MacroDescription_BuildID;
            }
            string environmentVariable = Environment.GetEnvironmentVariable(token.Substring(2, token.Length - 3));
            if (environmentVariable != null)
            {
                return environmentVariable;
            }
            if (!designTime)
            {
                throw new InvalidMacroInBuildNumberException(token);
            }
            return token;
        }

        private static IEnumerable<string> ExtractTokens(string format)
        {
            var list = new List<string>();
            MatchCollection matches = tokenFormat.Matches(format);
            for (int i = 0; i < matches.Count; i++)
            {
                string item = matches[i].Value;
                if (!list.Contains(item))
                {
                    list.Add(item);
                }
            }
            return list;
        }

        public string FormatStringToBuildNumber(string format, IBuildDetail buildDetail, IBuildDefinition buildDefinition, bool designTime)
        {
            string str = string.Empty;
            if (!string.IsNullOrEmpty(format))
            {
                string str2;
                str = string.Copy(format);
                IEnumerable<string> list = ExtractTokens(str);
                if (!string.IsNullOrEmpty(str) && !IsValidRevisionFormat(str, out str2))
                {
                    throw new InvalidRevisionFormatException(str2);
                }
                DateTime now = DateTime.Now;
                foreach (string str3 in list)
                {
                    int index = str.IndexOf(str3, StringComparison.OrdinalIgnoreCase);
                    if (index > -1)
                    {
                        string expandedPrefix = str.Substring(0, index);
                        string newValue = ExpandToken(str3, expandedPrefix, buildDetail, now, buildDefinition,
                                                      designTime);
                        str = str.Replace(str3, newValue);
                    }
                }
            }
            return str;
        }

        public static int GetMacroIndex(string macro)
        {
            for (int i = 0; i < macroNames.Length; i++)
            {
                string b = macroNames[i];
                if (string.Equals(macro, b, StringComparison.OrdinalIgnoreCase))
                {
                    return i;
                }
            }
            return -1;
        }

        public static string GetMacroName(MacrosIndex index)
        {
            if ((int) index < macroNames.Length)
            {
                return macroNames[(int) index];
            }
            return string.Empty;
        }


        public static bool IsValidRevisionFormat(string format, out string invalidRevisionFormat)
        {
            invalidRevisionFormat = string.Empty;
            if (!string.IsNullOrEmpty(format))
            {
                MatchCollection matchs = revisionFormat.Matches(format);
                if ((matchs.Count == 0) || ((matchs.Count == 1) && buildNumberWithRevision.IsMatch(format)))
                {
                    return true;
                }
                invalidRevisionFormat = matchs[0].Value;
            }
            return false;
        }

        public static string PaddedString(int number, int digits)
        {
            return number.ToString(CultureInfo.InvariantCulture).PadLeft(digits, '0');
        }
    }
}