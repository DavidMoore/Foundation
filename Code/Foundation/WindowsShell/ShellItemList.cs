using System.Collections.Generic;
using Shell32;

namespace Foundation.WindowsShell
{
    /// <summary>
    /// A collection of ShellItems based on the generic List
    /// </summary>
    public class ShellItemList : List<ShellItem>
    {
        /// <summary>
        /// Creates an empty list
        /// </summary>
        public ShellItemList() {}

        /// <summary>
        /// Creates the list from an existing list of Shell32 objects
        /// </summary>
        /// <param name="items"></param>
        public ShellItemList(FolderItems items)
        {
            Add(items);
        }

        /// <summary>
        /// Adds an existing list of Shell32 objects to this list
        /// </summary>
        /// <param name="items"></param>
        public void Add(FolderItems items)
        {
            foreach( ShellFolderItem item in items )
            {
                Add(new ShellItem(item));
            }
        }
    }
}