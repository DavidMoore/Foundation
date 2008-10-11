namespace Foundation.Services.Security
{
    /// <summary>
    /// Defines where the salt is positioned with the salted data
    /// </summary>
    public enum SaltPosition
    {
        /// <summary>
        /// Salt occurs at the start of the data
        /// </summary>
        Prefix,

        /// <summary>
        /// Salt occurs at the end of the data
        /// </summary>
        Suffix
    }
}