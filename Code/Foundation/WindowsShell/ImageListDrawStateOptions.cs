using System;

namespace Foundation.WindowsShell
{
    /// <summary>
    /// Enumeration containing XP ImageList Draw State options
    /// </summary>
    [Flags]
    public enum ImageListDrawStateOptions
    {
        /// <summary>
        /// The image state is not modified. 
        /// </summary>
        None = (0x00000000),

        /// <summary>
        /// Adds a glow effect to the icon, which causes the icon to appear to glow 
        /// with a given color around the edges. (Note: does not appear to be
        /// implemented)
        /// </summary>
        /// <remarks>The color for the glow effect is passed to the IImageList::Draw method in the crEffect member of IMAGELISTDRAWPARAMS.</remarks>
        Glow = (0x00000001),

        /// <summary>
        /// Adds a drop shadow effect to the icon. (Note: does not appear to be
        /// implemented)
        /// </summary>
        /// <remarks>The color for the drop shadow effect is passed to the IImageList::Draw method in the crEffect member of IMAGELISTDRAWPARAMS.</remarks>
        Shadow = (0x00000002),

        /// <summary>
        /// Saturates the icon by increasing each color component 
        /// of the RGB triplet for each pixel in the icon. (Note: only ever appears
        /// to result in a completely unsaturated icon)
        /// </summary>
        /// <remarks>The amount to increase is indicated by the frame member in the IMAGELISTDRAWPARAMS method.</remarks>
        Saturate = (0x00000004),

        /// <summary>
        /// Alpha blends the icon. Alpha blending controls the transparency 
        /// level of an icon, according to the value of its alpha channel. 
        /// (Note: does not appear to be implemented).
        /// </summary>
        /// <remarks>The value of the alpha channel is indicated by the frame member in the IMAGELISTDRAWPARAMS method. The alpha channel can be from 0 to 255, with 0 being completely transparent, and 255 being completely opaque.</remarks>
        Alpha = (0x00000008)
    }
}