using Microsoft.TeamFoundation.Build.Client;

namespace Foundation.Build.Activities
{
    public interface IBuildQueryProvider
    {
        int GetHighestExistingBuildNumber(string expandedPrefix, IBuildDetail buildDetail, int numberDigits, int max);
    }
}