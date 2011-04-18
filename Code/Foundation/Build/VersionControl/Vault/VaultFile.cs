namespace Foundation.Build.VersionControl.Vault
{
    public class VaultFile
    {
        public string Name { get; set; }

        public int Version { get; set; }

        public long Length { get; set; }

        public VaultFileStatus Status { get; set; }

        public long ObjectId { get; set; }

        public long ObjectVersionId { get; set; }
    }
}