using System.Diagnostics.CodeAnalysis;

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
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", MessageId = "SHA")]
        MD5,

        /// <summary>
        /// 40-character SHA hash
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", MessageId = "SHA")]
        SHA1,

        /// <summary>
        /// 64-character SHA hash
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", MessageId = "SHA")]
        SHA256,

        /// <summary>
        /// 96-character SHA hash
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", MessageId = "SHA")]
        SHA384,

        /// <summary>
        /// 128-character SHA hash
        /// </summary>
        [SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", MessageId = "SHA")]
        SHA512
    }
}