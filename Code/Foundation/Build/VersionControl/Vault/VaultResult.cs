namespace Foundation.Build.VersionControl.Vault
{
    public class VaultResult
    {
        /// <summary>
        /// Gets or sets a value indicating whether the vault request was a success.
        /// </summary>
        /// <value>
        ///   <c>true</c> if the vault request was successful; otherwise, <c>false</c>.
        /// </value>
        public bool Success { get; set; }

        public VaultFolder Folder { get; set; }
    }
}