﻿using System;
using System.IO;

namespace Foundation.Extensions
{
    public static class DirectoryInfoExtensions
    {
        /// <summary>
        /// Returns the file info for the specified filename in the directory, or null if it can't be found
        /// </summary>
        /// <param name="directoryInfo"></param>
        /// <param name="fileName"></param>
        /// <returns></returns>
        /// <exception cref="ArgumentNullException">when <paramref name="directoryInfo"/> is null</exception>
        public static FileInfo GetFile(this DirectoryInfo directoryInfo, string fileName)
        {
            if( directoryInfo == null) throw new ArgumentNullException("directoryInfo");

            var files = directoryInfo.GetFiles(fileName);

            ThrowException.IfTrue<InvalidOperationException>(files.Length > 1,
                "Expecting 0 or 1 file to match the filename [{0}]. Please make sure you don't supply a file pattern.", fileName);

            return files.Length == 0 ? null : files[0];
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
        /// Returns true if this directory is actually a file. It checks if it exists as a file, or has a file extension.
        /// </summary>
        /// <param name="directoryInfo"></param>
        /// <returns></returns>
        /// <exception cref="ArgumentNullException">when <paramref name="directoryInfo"/> is null</exception>
        public static bool IsFile(this DirectoryInfo directoryInfo)
        {
            if (directoryInfo == null) throw new ArgumentNullException("directoryInfo");

            return directoryInfo.ToFileInfo().Exists || Path.GetFileName(directoryInfo.FullName).Contains(".");
        }
    }
}