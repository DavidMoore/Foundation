namespace Foundation.Build.Activities
{
    public class BuildVersionInfo
    {
        public BuildVersionInfo()
        {
            BuildQuality = "Final";
        }

        public int Major { get; set; }
        public int Minor { get; set; }
        public int Build { get; set; }
        public int Revision { get; set; }
        public string BuildQuality { get; set; }

        public string ProductName { get; set; }
    }
}