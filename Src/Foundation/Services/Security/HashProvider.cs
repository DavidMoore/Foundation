namespace Foundation.Services.Security
{
    /// <summary>
    /// The available Hashing algorithms the Hasher class can use
    /// </summary>
    public enum HashProvider
    {
        /// <summary>
        /// 32-character MD5 hash
        /// </summary>
        MD5,

        /// <summary>
        /// 40-character SHA hash
        /// </summary>
        SHA1,

        /// <summary>
        /// 64-character SHA hash
        /// </summary>
        SHA256,

        /// <summary>
        /// 96-character SHA hash
        /// </summary>
        SHA384,

        /// <summary>
        /// 128-character SHA hash
        /// </summary>
        SHA512
    }
}