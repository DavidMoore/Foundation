using System;
using Shell32;

namespace Foundation.Windows.Shell
{
    [CLSCompliant(false)]
    public class ShellFolder : ShellItem
    {
        readonly Folder3 folder;
        ShellItemCollection children;

        /// <summary>
        /// Creates a shell item from the Windows Shell32 library
        /// </summary>
        /// <param name="shellFolder">The shell folder</param>
        public ShellFolder(Folder3 shellFolder) : base(shellFolder == null ? null : shellFolder.Self as ShellFolderItem)
        {
            folder = shellFolder;
        }

        /// <summary>
        /// The items directly under this folder
        /// </summary>
        public ShellItemCollection Children
        {
            get
            {
                if( children == null ) children = new ShellItemCollection(folder.Items());
                return children;
            }
        }
    }
}