using System;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.InteropServices;

namespace Foundation.WindowsShell
{
    /// <summary>
    /// Summary description for ShellImageList.
    /// </summary>
    public class ShellImageList : IDisposable
    {
        const int FILE_ATTRIBUTE_DIRECTORY = 0x10;
        const int FILE_ATTRIBUTE_NORMAL = 0x80;

        const int FORMAT_MESSAGE_ALLOCATE_BUFFER = 0x100;
        const int FORMAT_MESSAGE_ARGUMENT_ARRAY = 0x2000;
        const int FORMAT_MESSAGE_FROM_HMODULE = 0x800;
        const int FORMAT_MESSAGE_FROM_STRING = 0x400;
        const int FORMAT_MESSAGE_FROM_SYSTEM = 0x1000;
        const int FORMAT_MESSAGE_IGNORE_INSERTS = 0x200;
        const int FORMAT_MESSAGE_MAX_WIDTH_MASK = 0xFF;
        internal const int MAX_PATH = 260;
        bool disposed;
        IntPtr hIml = IntPtr.Zero;
        IImageList iImageList;
        ShellImageListSize size = ShellImageListSize.SmallIcons;

        /// <summary>
        /// Creates a Small Icons SystemImageList 
        /// </summary>
        public ShellImageList()
        {
            Create();
        }

        /// <summary>
        /// Creates a SystemImageList with the specified size
        /// </summary>
        /// <param name="size">Size of System ImageList</param>
        public ShellImageList(ShellImageListSize size)
        {
            this.size = size;
            Create();
        }

        /// <summary>
        /// Gets the hImageList handle
        /// </summary>
        public IntPtr Handle { get { return hIml; } }

        /// <summary>
        /// Gets/sets the size of System Image List to retrieve.
        /// </summary>
        public ShellImageListSize ImageListSize
        {
            get { return size; }
            set
            {
                size = value;
                Create();
            }
        }

        /// <summary>
        /// Returns the size of the Image List Icons.
        /// </summary>
        public Size Size
        {
            get
            {
                var cx = 0;
                var cy = 0;
                if( iImageList == null )
                {
                    NativeMethods.ImageList_GetIconSize(
                        hIml,
                        ref cx,
                        ref cy);
                }
                else
                {
                    iImageList.GetIconSize(ref cx, ref cy);
                }
                var sz = new Size(
                    cx, cy);
                return sz;
            }
        }

        #region IDisposable Members

        /// <summary>
        /// Clears up any resources associated with the SystemImageList
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        #endregion

        /// <summary>
        /// Returns a GDI+ copy of the icon from the ImageList
        /// at the specified index.
        /// </summary>
        /// <param name="index">The index to get the icon for</param>
        /// <returns>The specified icon</returns>
        public Icon Icon(int index)
        {
            Icon icon = null;

            var hIcon = IntPtr.Zero;
            if( iImageList == null )
            {
                hIcon = NativeMethods.ImageList_GetIcon(
                    hIml,
                    index,
                    (int) ImageListDrawItemFlags.Transparent);
            }
            else
            {
                iImageList.GetIcon(
                    index,
                    (int) ImageListDrawItemFlags.Transparent,
                    ref hIcon);
            }

            if( hIcon != IntPtr.Zero )
            {
                icon = System.Drawing.Icon.FromHandle(hIcon);
            }
            return icon;
        }

        /// <summary>
        /// Return the index of the icon for the specified file, always using 
        /// the cached version where possible.
        /// </summary>
        /// <param name="fileName">Filename to get icon for</param>
        /// <returns>Index of the icon</returns>
        public int IconIndex(string fileName)
        {
            return IconIndex(fileName, false);
        }

        /// <summary>
        /// Returns the index of the icon for the specified file
        /// </summary>
        /// <param name="fileName">Filename to get icon for</param>
        /// <param name="forceLoadFromDisk">If True, then hit the disk to get the icon,
        /// otherwise only hit the disk if no cached icon is available.</param>
        /// <returns>Index of the icon</returns>
        public int IconIndex(
            string fileName,
            bool forceLoadFromDisk)
        {
            return IconIndex(
                fileName,
                forceLoadFromDisk,
                ShellIconStateConstants.ShellIconStateNormal);
        }

        /// <summary>
        /// Returns the index of the icon for the specified file
        /// </summary>
        /// <param name="fileName">Filename to get icon for</param>
        /// <param name="forceLoadFromDisk">If True, then hit the disk to get the icon,
        /// otherwise only hit the disk if no cached icon is available.</param>
        /// <param name="iconState">Flags specifying the state of the icon
        /// returned.</param>
        /// <returns>Index of the icon</returns>
        public int IconIndex(
            string fileName,
            bool forceLoadFromDisk,
            ShellIconStateConstants iconState
            )
        {
            var dwFlags = SHGetFileInfoConstants.SHGFI_SYSICONINDEX;
            var dwAttr = 0;
            if( size == ShellImageListSize.SmallIcons )
            {
                dwFlags |= SHGetFileInfoConstants.SHGFI_SMALLICON;
            }

            // We can choose whether to access the disk or not. If you don't
            // hit the disk, you may get the wrong icon if the icon is
            // not cached. Also only works for files.
            if( !forceLoadFromDisk )
            {
                dwFlags |= SHGetFileInfoConstants.SHGFI_USEFILEATTRIBUTES;
                dwAttr = FILE_ATTRIBUTE_NORMAL;
            }
            else
            {
                dwAttr = 0;
            }

            // sFileSpec can be any file. You can specify a
            // file that does not exist and still get the
            // icon, for example sFileSpec = "C:\PANTS.DOC"
            var shfi = new SHFILEINFO();
            var shfiSize = (uint) Marshal.SizeOf(shfi.GetType());
            var retVal = NativeMethods.SHGetFileInfo(
                fileName, dwAttr, ref shfi, shfiSize,
                ((uint) (dwFlags) | (uint) iconState));

            if( retVal.Equals(IntPtr.Zero) )
            {
                //System.Diagnostics.Debug.Assert((!retVal.Equals(IntPtr.Zero)),"Failed to get icon index");
                return 0;
            }
            else
            {
                return shfi.iIcon;
            }
        }

        /// <summary>
        /// Draws an image
        /// </summary>
        /// <param name="hdc">Device context to draw to</param>
        /// <param name="index">Index of image to draw</param>
        /// <param name="x">X Position to draw at</param>
        /// <param name="y">Y Position to draw at</param>
        public void DrawImage(
            IntPtr hdc,
            int index,
            int x,
            int y
            )
        {
            DrawImage(hdc, index, x, y, ImageListDrawItemFlags.Transparent);
        }

        /// <summary>
        /// Draws an image using the specified flags
        /// </summary>
        /// <param name="hdc">Device context to draw to</param>
        /// <param name="index">Index of image to draw</param>
        /// <param name="x">X Position to draw at</param>
        /// <param name="y">Y Position to draw at</param>
        /// <param name="flags">Drawing flags</param>
        public void DrawImage(
            IntPtr hdc,
            int index,
            int x,
            int y,
            ImageListDrawItemFlags flags
            )
        {
            if( iImageList == null )
            {
                var ret = NativeMethods.ImageList_Draw(
                    hIml,
                    index,
                    hdc,
                    x,
                    y,
                    (int) flags);
            }
            else
            {
                var pimldp = new IMAGELISTDRAWPARAMS();
                pimldp.hdcDst = hdc;
                pimldp.cbSize = Marshal.SizeOf(pimldp.GetType());
                pimldp.i = index;
                pimldp.x = x;
                pimldp.y = y;
                pimldp.rgbFg = -1;
                pimldp.fStyle = (int) flags;
                iImageList.Draw(ref pimldp);
            }
        }

        /// <summary>
        /// Draws an image using the specified flags and specifies
        /// the size to clip to (or to stretch to if Scale
        /// is provided).
        /// </summary>
        /// <param name="hdc">Device context to draw to</param>
        /// <param name="index">Index of image to draw</param>
        /// <param name="x">X Position to draw at</param>
        /// <param name="y">Y Position to draw at</param>
        /// <param name="flags">Drawing flags</param>
        /// <param name="cx">Width to draw</param>
        /// <param name="cy">Height to draw</param>
        public void DrawImage(
            IntPtr hdc,
            int index,
            int x,
            int y,
            ImageListDrawItemFlags flags,
            int cx,
            int cy
            )
        {
            var pimldp = new IMAGELISTDRAWPARAMS();
            pimldp.hdcDst = hdc;
            pimldp.cbSize = Marshal.SizeOf(pimldp.GetType());
            pimldp.i = index;
            pimldp.x = x;
            pimldp.y = y;
            pimldp.cx = cx;
            pimldp.cy = cy;
            pimldp.fStyle = (int) flags;
            if( iImageList == null )
            {
                pimldp.himl = hIml;
                var ret = NativeMethods.ImageList_DrawIndirect(ref pimldp);
            }
            else
            {
                iImageList.Draw(ref pimldp);
            }
        }

        /// <summary>
        /// Draws an image using the specified flags and state on XP systems.
        /// </summary>
        /// <param name="hdc">Device context to draw to</param>
        /// <param name="index">Index of image to draw</param>
        /// <param name="x">X Position to draw at</param>
        /// <param name="y">Y Position to draw at</param>
        /// <param name="flags">Drawing flags</param>
        /// <param name="cx">Width to draw</param>
        /// <param name="cy">Height to draw</param>
        /// <param name="foreColor">Fore colour to blend with when using the 
        /// Selected or Blend25 flags</param>
        /// <param name="stateFlags">State flags</param>
        /// <param name="glowOrShadowColor">If stateFlags include ILS_GLOW, then
        /// the colour to use for the glow effect.  Otherwise if stateFlags includes 
        /// ILS_SHADOW, then the colour to use for the shadow.</param>
        /// <param name="saturateColorOrAlpha">If stateFlags includes Alpha,
        /// then the alpha component is applied to the icon. Otherwise if 
        /// ILS_SATURATE is included, then the (R,G,B) components are used
        /// to saturate the image.</param>
        public void DrawImage(
            IntPtr hdc,
            int index,
            int x,
            int y,
            ImageListDrawItemFlags flags,
            int cx,
            int cy,
            Color foreColor,
            ImageListDrawStateFlags stateFlags,
            Color saturateColorOrAlpha,
            Color glowOrShadowColor
            )
        {
            var pimldp = new IMAGELISTDRAWPARAMS();
            pimldp.hdcDst = hdc;
            pimldp.cbSize = Marshal.SizeOf(pimldp.GetType());
            pimldp.i = index;
            pimldp.x = x;
            pimldp.y = y;
            pimldp.cx = cx;
            pimldp.cy = cy;
            pimldp.rgbFg = Color.FromArgb(0,
                foreColor.R, foreColor.G, foreColor.B).ToArgb();
            Console.WriteLine("{0}", pimldp.rgbFg);
            pimldp.fStyle = (int) flags;
            pimldp.fState = (int) stateFlags;
            if( (stateFlags & ImageListDrawStateFlags.Alpha) ==
                ImageListDrawStateFlags.Alpha )
            {
                // Set the alpha:
                pimldp.Frame = saturateColorOrAlpha.A;
            }
            else if( (stateFlags & ImageListDrawStateFlags.Saturate) ==
                ImageListDrawStateFlags.Saturate )
            {
                // discard alpha channel:
                saturateColorOrAlpha = Color.FromArgb(0,
                    saturateColorOrAlpha.R,
                    saturateColorOrAlpha.G,
                    saturateColorOrAlpha.B);
                // set the saturate color
                pimldp.Frame = saturateColorOrAlpha.ToArgb();
            }
            glowOrShadowColor = Color.FromArgb(0,
                glowOrShadowColor.R,
                glowOrShadowColor.G,
                glowOrShadowColor.B);
            pimldp.crEffect = glowOrShadowColor.ToArgb();
            if( iImageList == null )
            {
                pimldp.himl = hIml;
                var ret = NativeMethods.ImageList_DrawIndirect(ref pimldp);
            }
            else
            {
                iImageList.Draw(ref pimldp);
            }
        }

        /// <summary>
        /// Determines if the system is running Windows XP
        /// or above
        /// </summary>
        /// <returns>True if system is running XP or above, False otherwise</returns>
        static bool IsXpOrAbove()
        {
            var ret = false;
            if( Environment.OSVersion.Version.Major > 5 )
            {
                ret = true;
            }
            else if( (Environment.OSVersion.Version.Major == 5) &&
                (Environment.OSVersion.Version.Minor >= 1) )
            {
                ret = true;
            }
            return ret;
            //return false;
        }

        /// <summary>
        /// Creates the SystemImageList
        /// </summary>
        void Create()
        {
            // forget last image list if any:
            hIml = IntPtr.Zero;

            if( IsXpOrAbove() )
            {
                // Get the System IImageList object from the Shell:
                var iidImageList = new Guid("46EB5926-582E-4017-9FDF-E8998DAA0950");
                var ret = NativeMethods.SHGetImageList(
                    (int) size,
                    ref iidImageList,
                    ref iImageList
                    );
                // the image list handle is the IUnknown pointer, but 
                // using Marshal.GetIUnknownForObject doesn't return
                // the right value.  It really doesn't hurt to make
                // a second call to get the handle:
                NativeMethods.SHGetImageListHandle((int) size, ref iidImageList, ref hIml);
            }
            else
            {
                // Prepare flags:
                var dwFlags = SHGetFileInfoConstants.SHGFI_USEFILEATTRIBUTES |
                    SHGetFileInfoConstants.SHGFI_SYSICONINDEX;
                if( size == ShellImageListSize.SmallIcons )
                {
                    dwFlags |= SHGetFileInfoConstants.SHGFI_SMALLICON;
                }
                // Get image list
                var shfi = new SHFILEINFO();
                var shfiSize = (uint) Marshal.SizeOf(shfi.GetType());

                // Call SHGetFileInfo to get the image list handle
                // using an arbitrary file:
                hIml = NativeMethods.SHGetFileInfo(
                    ".txt",
                    FILE_ATTRIBUTE_NORMAL,
                    ref shfi,
                    shfiSize,
                    (uint) dwFlags);
                Debug.Assert((hIml != IntPtr.Zero), "Failed to create Image List");
            }
        }

        /// <summary>
        /// Clears up any resources associated with the SystemImageList
        /// when disposing is true.
        /// </summary>
        /// <param name="disposing">Whether the object is being disposed</param>
        protected virtual void Dispose(bool disposing)
        {
            if( !disposed && disposing && iImageList != null )
            {
                Marshal.ReleaseComObject(iImageList);
            }
            disposed = true;
        }

        /// <summary>
        /// Finalise for ShellImageList
        /// </summary>
        ~ShellImageList()
        {
            Dispose(false);
        }
    }
}