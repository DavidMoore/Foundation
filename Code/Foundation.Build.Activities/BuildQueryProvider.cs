using Microsoft.TeamFoundation.Build.Client;

namespace Foundation.Build.Activities
{
    public class BuildQueryProvider : IBuildQueryProvider
    {
        #region IBuildQueryProvider Members

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

        #endregion

        private static int HighestExistingBuildNumber(string expandedPrefix, IBuildDetail buildDetail, IBuildDetailSpec spec, int max)
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