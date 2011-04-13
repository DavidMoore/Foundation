using System;

namespace Foundation.Windows.Shell
{
    [Flags]
    enum SHGetFileInfoConstants
    {
        SHGFI_ICON = 0x100, // get icon 
        SHGFI_DISPLAYNAME = 0x200, // get display name 
        SHGFI_TYPENAME = 0x400, // get type name 
        SHGFI_ATTRIBUTES = 0x800, // get attributes 
        SHGFI_ICONLOCATION = 0x1000, // get icon location 
        SHGFI_EXETYPE = 0x2000, // return exe type 
        SHGFI_SYSICONINDEX = 0x4000, // get system icon index 
        SHGFI_LINKOVERLAY = 0x8000, // put a link overlay on icon 
        SHGFI_SELECTED = 0x10000, // show icon in selected state 
        SHGFI_ATTR_SPECIFIED = 0x20000, // get only specified attributes 
        SHGFI_LARGEICON = 0x0, // get large icon 
        SHGFI_SMALLICON = 0x1, // get small icon 
        SHGFI_OPENICON = 0x2, // get open icon 
        SHGFI_SHELLICONSIZE = 0x4, // get shell size icon 
        //SHGFI_PIDL = 0x8,                  // pszPath is a pidl 
        SHGFI_USEFILEATTRIBUTES = 0x10, // use passed dwFileAttribute 
        SHGFI_ADDOVERLAYS = 0x000000020, // apply the appropriate overlays
        SHGFI_OVERLAYINDEX = 0x000000040 // Get the index of the overlay
    }
}