using System.Text.RegularExpressions;
using Foundation.ExtensionMethods;
using Microsoft.TeamFoundation.Build.Client;

namespace Foundation.Build.Activities
{
    public class BuildQueryProvider : IBuildQueryProvider
    {
        internal readonly Regex BuildNumberRegex;

        const string buildNumberRegexString = @"(?<Major>\d+)\.(?<Minor>\d+)\.(?<Build>\d+)\.(?<Revision>\d+)";

        /// <summary>
        /// Initializes a new instance of the <see cref="T:System.Object"/> class.
        /// </summary>
        public BuildQueryProvider()
        {
            BuildNumberRegex = new Regex(buildNumberRegexString);
        }

        public int GetHighestExistingBuildNumber(string expandedPrefix, IBuildDetail buildDetail, int numberDigits, int max)
        {
            IBuildDetailSpec spec = buildDetail.BuildServer.CreateBuildDetailSpec(new[] {buildDetail.BuildDefinitionUri});
            spec.QueryOptions = QueryOptions.None;
            spec.InformationTypes = null;
            spec.QueryOrder = BuildQueryOrder.FinishTimeDescending;
            spec.QueryDeletedOption = QueryDeletedOption.IncludeDeleted;
            spec.MaxBuildsPerDefinition = 100;
            spec.BuildNumber = expandedPrefix + ".*";
            max = HighestExistingBuildNumber(expandedPrefix, buildDetail, spec, max);
            return max;
        }

        public int GetHighestExistingBuildNumber(BuildVersionInfo versionInfo, IBuildDetail buildDetail)
        {
            var spec = buildDetail.BuildServer.CreateBuildDetailSpec(new[] { buildDetail.BuildDefinitionUri });

            spec.QueryOptions = QueryOptions.None;
            spec.InformationTypes = null;
            spec.QueryOrder = BuildQueryOrder.FinishTimeDescending;
            spec.QueryDeletedOption = QueryDeletedOption.IncludeDeleted;
            spec.MaxBuildsPerDefinition = 100;
            spec.BuildNumber = "*{0}*{1}.{2}.{3}.*".StringFormat(versionInfo.ProductName, versionInfo.Major, versionInfo.Minor, versionInfo.Build);

            return HighestExistingBuildNumber(buildDetail, spec);
        }

        int HighestExistingBuildNumber(IBuildDetail buildDetail, IBuildDetailSpec detailSpec)
        {
            var queryResult = buildDetail.BuildServer.QueryBuilds(detailSpec);

            var result = 0;

            foreach (IBuildDetail detail in queryResult.Builds)
            {
                // Parse the build number
                var buildParts = BuildNumberRegex.Match(detail.BuildNumber);

                if (!buildParts.Success) continue;

                // If this build has a higher revision number than the current one,
                // update the revision number to return.
                var revisionNumber = int.Parse(buildParts.Groups["Revision"].Value);

                if (revisionNumber > result) result = revisionNumber;
            }

            return result;
        }

        static int HighestExistingBuildNumber(string expandedPrefix, IBuildDetail buildDetail, IBuildDetailSpec spec, int max)
        {
            IBuildQueryResult result = buildDetail.BuildServer.QueryBuilds(spec);
            int length = expandedPrefix.Length;
            foreach (IBuildDetail detail in result.Builds)
            {
                int num2;
                string buildNumber = detail.BuildNumber;
                if (((buildNumber.Length > (length + 1)) && int.TryParse(buildNumber.Substring(length + 1), out num2)) &&
                    (num2 > max))
                {
                    max = num2;
                }
            }
            return max;
        }
    }
}