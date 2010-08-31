using System;
using System.IO;

namespace Foundation.ExtensionMethods
{
    public static class FileSystemInfoExtensions
    {
        public static void Rename(this FileSystemInfo info, string newName)
        {
            var file = info as FileInfo;
            var dir = info as DirectoryInfo;

            if(file == null && dir == null) throw new ArgumentOutOfRangeException("info", "The passed FileSystemInfo is not a FileInfo or DirectoryInfo");

            if( file != null)
            {
                file.MoveTo( Path.Combine(file.DirectoryName, newName) );
                return;
            }

            throw new NotImplementedException();
        }


        /// <summary>
        /// Returns true if this <paramref name="fileSystemInfo"/> is actually a file. It checks if it exists as a file, or has a file extension.
        /// </summary>
        /// <param name="fileSystemInfo"></param>
        /// <returns></returns>
        /// <exception cref="ArgumentNullException">when <paramref name="fileSystemInfo"/> is null</exception>
        public static bool IsFile(this FileSystemInfo fileSystemInfo)
        {
            if (fileSystemInfo == null) throw new ArgumentNullException("fileSystemInfo");
            return fileSystemInfo.ToFileInfo().Exists || Path.GetFileName(fileSystemInfo.FullName).Contains(".");
        }

        /// <summary>
        /// Returns the extension with the leading dot / period
        /// </summary>
        /// <param name="fileSystemInfo"></param>
        /// <returns></returns>
        /// <exception cref="ArgumentNullException">when <paramref name="fileSystemInfo"/> is null</exception>
        public static string ExtensionWithoutDot(this FileSystemInfo fileSystemInfo)
        {
            if (fileSystemInfo == null) throw new ArgumentNullException("fileSystemInfo");
            return fileSystemInfo.Extension.IsNullOrEmpty() ? fileSystemInfo.Extension : fileSystemInfo.Extension.TrimStart(new[] { '.' });
        }

        /// <summary>
        /// Converts a <see cref="FileSystemInfo"/> to a <see cref="FileSystemInfo"/>
        /// </summary>
        /// <param name="fileSystemInfo"></param>
        /// <returns></returns>
        /// <exception cref="ArgumentNullException">when <paramref name="fileSystemInfo"/> is null</exception>
        public static FileInfo ToFileInfo(this FileSystemInfo fileSystemInfo)
        {
            if (fileSystemInfo == null) throw new ArgumentNullException("fileSystemInfo");
            return new FileInfo(fileSystemInfo.FullName);
        }

        /// <summary>
        /// Gets the name of the file minus the file extension
        /// </summary>
        /// <param name="fileSystemInfo"></param>
        /// <returns></returns>
        /// <exception cref="ArgumentNullException">when <paramref name="fileSystemInfo"/> is null</exception>
        public static string NameWithoutExtension(this FileSystemInfo fileSystemInfo)
        {
            if (fileSystemInfo == null) throw new ArgumentNullException("fileSystemInfo");
            return Path.GetFileNameWithoutExtension(fileSystemInfo.Name);
        }
    }
}
