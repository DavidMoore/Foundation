using System;
using System.Collections.ObjectModel;
using Shell32;

namespace Foundation.Windows.Shell
{
    /// <summary>
    /// A collection of ShellItems based on the generic List
    /// </summary>
    [CLSCompliant(false)]
    public class ShellItemCollection : Collection<ShellItem>
    {
        /// <summary>
        /// Creates an empty list
        /// </summary>
        public ShellItemCollection() {}

        /// <summary>
        /// Creates the list from an existing list of Shell32 objects
        /// </summary>
        /// <param name="items"></param>
        public ShellItemCollection(FolderItems items)
        {
            Add(items);
        }

        /// <summary>
        /// Adds an existing list of Shell32 objects to this list
        /// </summary>
        /// <param name="items"></param>
        void Add(FolderItems items)
        {
            foreach( ShellFolderItem item in items )
            {
                Add(new ShellItem(item));
            }
        }
    }
}