using System;
using Shell32;

namespace Foundation.WindowsShell
{
    /// <summary>
    /// Provides methods for opening and manipulating a Windows shell
    /// </summary>
    public class ShellProvider : IShellProvider, IDisposable
    {
        private static ShellClass shell;

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

        public ShellFolder Desktop { get { return GetShellFolderByPath(ShellNamespaceIdentifier.Desktop); } }

        public ShellFolder MyComputer { get { return GetShellFolderByPath(ShellNamespaceIdentifier.MyComputer); } }

        public ShellClass ShellInstance
        {
            get
            {
                if( shell == null ) shell = new ShellClass();
                return shell;
            }
        }

        public virtual ShellClass OpenNewShell()
        {
            return new ShellClass();
        }

        public ShellFolder GetShellFolderByPath(ShellNamespaceIdentifier nameSpace)
        {
            return new ShellFolder(GetFolder(nameSpace));
        }

        public ShellFolder GetShellFolderByPath(string nameSpace)
        {
            return new ShellFolder(GetFolder(nameSpace));
        }

        /// <summary>
        /// Returns a collection of objects found under the specified path/namespace
        /// </summary>
        /// <param name="nameSpace"></param>
        /// <returns></returns>
        public ShellItemList GetItemsUnderPath(ShellNamespaceIdentifier nameSpace)
        {
            return GetShellFolderByPath(nameSpace).Children;
        }

        /// <summary>
        /// Returns a collection of objects found under the specified path/namespace
        /// </summary>
        /// <param name="nameSpace"></param>
        /// <returns></returns>
        public ShellItemList GetItemsUnderPath(string nameSpace)
        {
            return GetShellFolderByPath(nameSpace).Children;
        }

        #endregion

        /// <summary>
        /// Frees up managed resources
        /// </summary>
        /// <param name="disposing"></param>
        protected virtual void Dispose(bool disposing)
        {
            if( !disposing || shell == null ) return;
            shell = null;
        }

        /// <summary>
        /// Gets a shell folder by its path or namespace
        /// </summary>
        /// <param name="nameSpace"></param>
        /// <returns></returns>
        protected virtual Folder3 GetFolder(object nameSpace)
        {
            return (Folder3) ShellInstance.NameSpace(nameSpace);
        }
    }
}