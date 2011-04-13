using System;
using System.Runtime.InteropServices;

namespace Foundation.Windows.Shell
{
    static class NativeMethods
    {
        [DllImport("shell32", CharSet = CharSet.Unicode)]
        internal static extern IntPtr SHGetFileInfo(
            string pszPath,
            int dwFileAttributes,
            ref SHFILEINFO psfi,
            uint cbFileInfo,
            uint uFlags);

        [DllImport("comctl32")]
        internal static extern int ImageList_Draw(
            IntPtr hIml,
            int i,
            IntPtr hdcDst,
            int x,
            int y,
            int fStyle);

        [DllImport("comctl32")]
        internal static extern int ImageList_DrawIndirect(
            ref IMAGELISTDRAWPARAMS pimldp);

        [DllImport("comctl32")]
        internal static extern int ImageList_GetIconSize(
            IntPtr himl,
            ref int cx,
            ref int cy);

        [DllImport("comctl32")]
        internal static extern IntPtr ImageList_GetIcon(
            IntPtr himl,
            int i,
            int flags);

        /// <summary>
        /// SHGetImageList is not exported correctly in XP.  See KB316931
        /// http://support.microsoft.com/default.aspx?scid=kb;EN-US;Q316931
        /// Apparently (and hopefully) ordinal 727 isn't going to change.
        /// </summary>
        [DllImport("shell32.dll", EntryPoint = "#727")]
        internal static extern int SHGetImageList(
            int iImageList,
            ref Guid riid,
            ref IImageList ppv
            );

        [DllImport("shell32.dll", EntryPoint = "#727")]
        internal static extern int SHGetImageListHandle(
            int iImageList,
            ref Guid riid,
            ref IntPtr handle
            );

        [DllImport("user32", CharSet = CharSet.Auto)]
        internal static extern IntPtr SendMessage(
            IntPtr hWnd,
            int wMsg,
            IntPtr wParam,
            IntPtr lParam);
    }
}
