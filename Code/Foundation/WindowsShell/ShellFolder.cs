using System;
using Shell32;

namespace Foundation.WindowsShell
{
    [CLSCompliant(false)]
    public class ShellFolder : ShellItem
    {
        readonly Folder3 folder;
        ShellItemList children;

        /// <summary>
        /// Creates a shell item from the Windows Shell32 library
        /// </summary>
        /// <param name="shellFolder">The shell folder</param>
        public ShellFolder(Folder3 shellFolder)
            : base(shellFolder.Self as ShellFolderItem)
        {
            folder = shellFolder;
        }

        /// <summary>
        /// The items directly under this folder
        /// </summary>
        public ShellItemList Children
        {
            get
            {
                if( children == null ) children = new ShellItemList(folder.Items());
                return children;
            }
        }
    }
}