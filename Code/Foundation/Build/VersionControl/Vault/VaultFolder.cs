using System.Collections.Generic;

namespace Foundation.Build.VersionControl.Vault
{
    public class VaultFolder
    {
        public VaultFolder(string name)
        {
            Name = name;
            Files = new List<VaultFile>();
        }

        public string Name { get; set; }

        public string WorkingFolder { get; set; }

        public IList<VaultFile> Files { get; set; }
    }
}