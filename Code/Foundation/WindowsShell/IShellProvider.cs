using System;
using Shell32;

namespace Foundation.WindowsShell
{
    [CLSCompliant(false)]
    public interface IShellProvider
    {
        /// <summary>
        /// Returns a singleton shell instance
        /// </summary>
        ShellClass ShellInstance { get; }

        /// <summary>
        /// The top-level Desktop object
        /// </summary>
        ShellFolder Desktop { get; }

        /// <summary>
        /// The My Computer object
        /// </summary>
        ShellFolder MyComputer { get; }

        /// <summary>
        /// Returns a new shell instance
        /// </summary>
        /// <returns></returns>
        ShellClass OpenNewShell();

        /// <summary>
        /// Returns a shell object for the specified namespace
        /// </summary>
        /// <param name="nameSpace"></param>
        /// <returns></returns>
        ShellFolder GetShellFolderByPath(ShellNamespaceIdentifier nameSpace);

        /// <summary>
        /// Returns a shell object for the specified namespace
        /// </summary>
        /// <param name="nameSpace"></param>
        /// <returns></returns>
        ShellFolder GetShellFolderByPath(string nameSpace);

        /// <summary>
        /// Returns a collection of objects found under the specified namespace
        /// </summary>
        /// <param name="nameSpace"></param>
        /// <returns></returns>
        ShellItemList GetItemsUnderPath(ShellNamespaceIdentifier nameSpace);

        /// <summary>
        /// Returns a collection of objects found under the specified namespace
        /// </summary>
        /// <param name="nameSpace"></param>
        /// <returns></returns>
        ShellItemList GetItemsUnderPath(string nameSpace);
    }
}