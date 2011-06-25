namespace Foundation.Build.VersionControl
{
    /// <summary>
    /// Generic, available version control operations.
    /// </summary>
    public enum VersionControlOperation
    {
        /// <summary>
        /// No operation.
        /// </summary>
        None = 0,

        /// <summary>
        /// Gets a version of a file or folder.
        /// </summary>
        Get = 1,

        /// <summary>
        /// Gets the VCS version of a local working file or folder.
        /// </summary>
        GetLocalVersion = 2
    }
}