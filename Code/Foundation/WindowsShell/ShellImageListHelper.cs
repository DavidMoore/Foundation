using System;
using System.Diagnostics.CodeAnalysis;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace Foundation.WindowsShell
{
    /// <summary>
    /// Helper Methods for Connecting ShellImageList to Common Controls
    /// </summary>
    public static class ShellImageListHelper
    {
        const int LVM_FIRST = 0x1000;
        const int LVM_SETIMAGELIST = (LVM_FIRST + 3);

        const int LVSIL_NORMAL = 0;
        const int LVSIL_SMALL = 1;
        const int LVSIL_STATE = 2;

        const int TV_FIRST = 0x1100;
        const int TVM_SETIMAGELIST = (TV_FIRST + 9);

        const int TVSIL_NORMAL = 0;
        const int TVSIL_STATE = 2;

        /// <summary>
        /// Associates a ShellImageList with a ListView control
        /// </summary>
        /// <param name="listView">ListView control to associate ImageList with</param>
        /// <param name="shellImageList">System Image List to associate</param>
        /// <param name="forStateImages">Whether to add ImageList as StateImageList</param>
        [SuppressMessage("Microsoft.Design", "CA1011:ConsiderPassingBaseTypesAsParameters", Justification = "This sets the ImageList using a windows message so could cause problems if set on a Control")]
        public static void SetListViewImageList(
            ListView listView,
            ShellImageList shellImageList,
            bool forStateImages
            )
        {
            if (listView == null) throw new ArgumentNullException("listView");
            if (shellImageList == null) throw new ArgumentNullException("shellImageList");
            var wParam = (IntPtr) LVSIL_NORMAL;
            if( shellImageList.ImageListSize == ShellImageListSize.SmallIcons )
            {
                wParam = (IntPtr) LVSIL_SMALL;
            }
            if( forStateImages )
            {
                wParam = (IntPtr) LVSIL_STATE;
            }
            NativeMethods.SendMessage(
                listView.Handle,
                LVM_SETIMAGELIST,
                wParam,
                shellImageList.Handle);
        }

        /// <summary>
        /// Associates a ShellImageList with a TreeView control
        /// </summary>
        /// <param name="treeView">TreeView control to associated ImageList with</param>
        /// <param name="shellImageList">System Image List to associate</param>
        /// <param name="forStateImages">Whether to add ImageList as StateImageList</param>
        [SuppressMessage("Microsoft.Design", "CA1011:ConsiderPassingBaseTypesAsParameters", Justification = "This sets the ImageList using a windows message so could cause problems if set on a Control")]
        public static void SetTreeViewImageList( TreeView treeView, ShellImageList shellImageList, bool forStateImages)
        {
            if (treeView == null) throw new ArgumentNullException("treeView");
            if (shellImageList == null) throw new ArgumentNullException("shellImageList");
            var wParam = (IntPtr) TVSIL_NORMAL;
            if( forStateImages )
            {
                wParam = (IntPtr) TVSIL_STATE;
            }
            NativeMethods.SendMessage(
                treeView.Handle,
                TVM_SETIMAGELIST,
                wParam,
                shellImageList.Handle);
        }
    }
}