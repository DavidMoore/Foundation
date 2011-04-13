using System;
using Shell32;

namespace Foundation.Windows.Shell
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
        /// <param name="shellNamespaceIdentifier"></param>
        /// <returns></returns>
        ShellFolder GetShellFolder(ShellNamespaceIdentifier shellNamespaceIdentifier);

        /// <summary>
        /// Returns a shell object for the specified namespace
        /// </summary>
        /// <param name="shellNamespace"></param>
        /// <returns></returns>
        ShellFolder GetShellFolder(string shellNamespace);

        /// <summary>
        /// Returns a collection of objects found under the specified namespace
        /// </summary>
        /// <param name="shellNamespaceIdentifier"></param>
        /// <returns></returns>
        ShellItemCollection GetItemsUnderPath(ShellNamespaceIdentifier shellNamespaceIdentifier);

        /// <summary>
        /// Returns a collection of objects found under the specified namespace
        /// </summary>
        /// <param name="shellNamespace"></param>
        /// <returns></returns>
        ShellItemCollection GetItemsUnderPath(string shellNamespace);
    }
}