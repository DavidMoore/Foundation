using System;
using System.Diagnostics.CodeAnalysis;
using System.IO;

namespace Foundation.Extensions
{
    [SuppressMessage("Microsoft.Design", "CA1011:ConsiderPassingBaseTypesAsParameters")]
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
    }
}