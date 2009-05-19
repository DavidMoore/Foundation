using System;
using System.Collections.Generic;
using Foundation.Extensions;
using Shell32;

namespace Foundation.WindowsShell
{
    /// <summary>
    /// Represents an item in the system shell, such as a folder, drive, or folder item
    /// </summary>
    public class ShellItem
    {
        readonly ShellFolderItem item;
        List<string> verbs;

        /// <summary>
        /// Creates a shell item from the Windows Shell32 library
        /// </summary>
        /// <param name="folderItem"></param>
        public ShellItem(ShellFolderItem folderItem)
        {
            item = folderItem;
        }

        /// <summary>
        /// Is this item a folder
        /// </summary>
        public bool IsFolder { get { return item.IsFolder; } }

        /// <summary>
        /// Is this item a link to another item
        /// </summary>
        public bool IsLink { get { return item.IsLink; } }

        /// <summary>
        /// Is this browsable / viewable
        /// </summary>
        public bool IsBrowsable { get { return item.IsBrowsable; } }

        /// <summary>
        /// Is this item part of the file system
        /// </summary>
        public bool IsFileSystem { get { return item.IsFileSystem; } }

        /// <summary>
        /// The size of the item in bytes
        /// </summary>
        public int Size { get { return item.Size; } }

        /// <summary>
        /// The name of the item
        /// </summary>
        public string Name { get { return item.Name; } }

        /// <summary>
        /// The namespace or full path to the item
        /// </summary>
        public string Path { get { return item.Path; } }

        /// <summary>
        /// The date the item was last modified
        /// </summary>
        public DateTime DateModified { get { return item.ModifyDate; } }

        /// <summary>
        /// The descriptive type of the item
        /// </summary>
        public string ItemType { get { return item.Type; } }

        /// <summary>
        /// Returns the ShellFolder if this item is a folder, otherwise null
        /// </summary>
        public ShellFolder AsFolder { get { return !IsFolder ? null : new ShellFolder((Folder3) item.GetFolder); } }

        public List<string> Verbs
        {
            get
            {
                if( verbs == null )
                {
                    var itemVerbs = item.Verbs();
                    verbs = new List<string>(itemVerbs.Count);
                    foreach( FolderItemVerb verb in itemVerbs )
                    {
                        verbs.Add(verb.Name);
                    }
                }

                return verbs;
            }
        }

        /// <summary>
        /// Converts the item to a human-readable string
        /// </summary>
        /// <returns></returns>
        public override string ToString()
        {
            return "{0} [{1}]".FormatUICulture(Name, Path);
        }
    }
}