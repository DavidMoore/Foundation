using System;

namespace Foundation.Build.Activities
{
    public class BuildVersionInfo
    {
        const string DefaultBuildQuality = "Final";

        public BuildVersionInfo()
        {
            BuildQuality = DefaultBuildQuality;
        }

        public int Major { get; set; }
        public int Minor { get; set; }
        public int Build { get; set; }
        public int Revision { get; set; }
        public string BuildQuality { get; set; }

        public string ProductName { get; set; }

        public override string ToString()
        {
            var quality = string.Equals(DefaultBuildQuality, BuildQuality, StringComparison.OrdinalIgnoreCase) ? string.Empty : BuildQuality;
            return string.Format("{0} {1}.{2}.{3}.{4} {5}", ProductName, Major, Minor, Build, Revision, quality).Trim();
        }
    }
}