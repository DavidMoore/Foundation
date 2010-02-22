using System;
using System.Linq;

namespace Foundation.Net
{
    /// <summary>
    /// Methods to help detect the MIME / Internet media type of a file
    /// </summary>
    public static class MimeTypeDetector
    {
        /// <summary>
        /// Tries to detect the MIME Type of a file by its extension
        /// </summary>
        /// <param name="extension"></param>
        /// <returns></returns>
        public static MimeType FromExtension(string extension)
        {
            return MimeTypes.All.SingleOrDefault(type => type.Extensions.Any(ext => ext.Equals(extension, StringComparison.OrdinalIgnoreCase)));
        }
    }
}