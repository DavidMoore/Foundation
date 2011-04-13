namespace Foundation.Windows.Shell
{
    /// <summary>
    /// Available system image list sizes
    /// </summary>
    public enum ShellImageListSize
    {
        /// <summary>
        /// System Large Icon Size (typically 32x32)
        /// </summary>
        LargeIcons = 0x0,

        /// <summary>
        /// System Small Icon Size (typically 16x16)
        /// </summary>
        SmallIcons = 0x1,

        /// <summary>
        /// System Extra Large Icon Size (typically 48x48).
        /// Only available under XP; under other OS the
        /// Large Icon ImageList is returned.
        /// </summary>
        ExtraLargeIcons = 0x2
    }
}