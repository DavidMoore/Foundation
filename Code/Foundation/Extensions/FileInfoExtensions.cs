using System;
using System.IO;

namespace Foundation.Extensions
{
    public static class FileInfoExtensions
    {
        /// <summary>
        /// Gets the name of the file minus the file extension
        /// </summary>
        /// <param name="file"></param>
        /// <returns></returns>
        public static string NameWithoutExtension(this FileInfo file)
        {
            var extensionIndex = file.Name.LastIndexOf(".", StringComparison.OrdinalIgnoreCase);

            if( extensionIndex < 0) return file.Name;

            return file.Name.Substring(0, extensionIndex);
        }

        /// <summary>
        /// Returns the extension with the leading dot / period
        /// </summary>
        /// <param name="file"></param>
        /// <returns></returns>
        public static string ExtensionWithoutDot(this FileInfo file)
        {
            return file.Extension.IsNullOrEmpty() ? file.Extension : file.Extension.TrimStart(new[] {'.'});
        }
    }
}
