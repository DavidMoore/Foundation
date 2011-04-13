using System;
using System.Runtime.InteropServices;
using Shell32;

namespace Foundation.Windows.Shell
{
    /// <summary>
    /// Provides methods for opening and manipulating a Windows shell
    /// </summary>
    [CLSCompliant(false)]
    public class ShellProvider : IShellProvider, IDisposable
    {
        static ShellClass shell;

        #region IDisposable Members

        ///<summary>
        /// Deletes the temporary dir once out of scope or disposed
        ///</summary>
        ///<filterpriority>2</filterpriority>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        #endregion

        #region IShellProvider Members

        public ShellFolder Desktop { get { return GetShellFolder(ShellNamespaceIdentifier.Desktop); } }

        public ShellFolder MyComputer { get { return GetShellFolder(ShellNamespaceIdentifier.MyComputer); } }

        public ShellClass ShellInstance
        {
            get { return shell ?? (shell = new ShellClass()); }
        }

        public virtual ShellClass OpenNewShell()
        {
            return new ShellClass();
        }

        public ShellFolder GetShellFolder(ShellNamespaceIdentifier shellNamespaceIdentifier)
        {
            return new ShellFolder(GetFolder(shellNamespaceIdentifier));
        }

        public ShellFolder GetShellFolder(string shellNamespace)
        {
            return new ShellFolder(GetFolder(shellNamespace));
        }

        /// <summary>
        /// Returns a collection of objects found under the specified path/namespace
        /// </summary>
        /// <param name="shellNamespaceIdentifier"></param>
        /// <returns></returns>
        public ShellItemCollection GetItemsUnderPath(ShellNamespaceIdentifier shellNamespaceIdentifier)
        {
            return GetShellFolder(shellNamespaceIdentifier).Children;
        }

        /// <summary>
        /// Returns a collection of objects found under the specified path/namespace
        /// </summary>
        /// <param name="shellNamespace"></param>
        /// <returns></returns>
        public ShellItemCollection GetItemsUnderPath(string shellNamespace)
        {
            return GetShellFolder(shellNamespace).Children;
        }

        #endregion

        /// <summary>
        /// Frees up managed resources
        /// </summary>
        /// <param name="disposing"></param>
        protected virtual void Dispose(bool disposing)
        {
            if( !disposing || shell == null ) return;
            Marshal.ReleaseComObject(shell);
            shell = null;
        }

        /// <summary>
        /// Gets a shell folder by its path or namespace
        /// </summary>
        /// <param name="pathOrNamespace"></param>
        /// <returns></returns>
        protected virtual Folder3 GetFolder(object pathOrNamespace)
        {
            return (Folder3) ShellInstance.NameSpace(pathOrNamespace);
        }
    }
}