using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Foundation.Extensions
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
    }
}
