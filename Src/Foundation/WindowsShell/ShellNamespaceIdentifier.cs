using System;

namespace Foundation.WindowsShell
{
    /// <summary>
    /// <para>
    /// CSIDL values provide a unique system-independent way to identify special folders used frequently by applications, 
    /// but which may not have the same name or location on any given system. For example, the system folder may be 
    /// "C:\Windows" on one system and "C:\Winnt" on another. These constants are defined in Shlobj.h and Shfolder.h.
    /// </para>
    /// </summary>
    /// <remarks>
    /// <para>
    /// These values supersede the use of environment variables for this purpose.
    /// A CSIDL is used in conjunction with one of four Shell functions, SHGetFolderLocation, SHGetFolderPath, 
    /// SHGetSpecialFolderLocation, and SHGetSpecialFolderPath, to retrieve a special folder's path or pointer 
    /// to an item identifier list (PIDL).
    /// Combine CSIDL_FLAG_CREATE with any of the other CSIDLs to force the creation of the associated folder. 
    /// The remaining CSIDLs correspond to either file system folders or virtual folders. Where the CSIDL 
    /// identifies a file system folder, a commonly used path is given as an example. Other paths may be used. 
    /// Some CSIDLs can be mapped to an equivalent %VariableName% environment variable. CSIDLs are more reliable, 
    /// however, and should be used if possible.
    /// </para>
    /// </remarks>
    [Flags]
    public enum ShellNamespaceIdentifier
    {
        /// <summary>
        /// <para>
        /// Version 5.0. Combine this CSIDL with any of the following CSIDLs to force the creation of the associated folder. 
        /// </para>
        ///</summary>
        FlagCreate = 0x8000,

        /// <summary>
        /// <para>
        /// Version 5.0. The file system directory that is used to store administrative tools for an individual user. 
        /// The Microsoft Management Console (MMC) will save customized consoles to this directory, and it will roam with the user.
        /// </para>
        ///</summary>
        AdminTools = 0x0030,

        /// <summary>
        /// <para>
        /// The file system directory that corresponds to the user's nonlocalized Startup program group.
        /// </para>
        ///</summary>
        AltStartup = 0x001d,

        /// <summary>
        /// <para>
        /// Version 4.71. The file system directory that serves as a common repository for application-specific data. 
        /// A typical path is C:\Documents and Settings\username\Application Data. This CSIDL is supported by the 
        /// redistributable Shfolder.dll for systems that do not have the Microsoft Internet Explorer 4.0 integrated Shell installed.
        /// </para>
        ///</summary>
        AppData = 0x001a,

        /// <summary>
        /// The virtual folder containing the objects in the user's Recycle Bin.
        /// </summary>
        BitBucket = 0x000a,

        /// <summary>
        /// <para>
        /// Version 6.0. The file system directory acting as a staging area for files waiting to be written to CD. 
        /// A typical path is C:\Documents and Settings\username\Local Settings\Application Data\Microsoft\CD Burning.
        /// </para>
        ///</summary>
        CdBurnArea = 0x003b,

        /// <summary>
        /// <para>
        /// Version 5.0. The file system directory containing administrative tools for all users of the computer.
        /// </para>
        ///</summary>
        CommonAdminTools = 0x002f,

        /// <summary>
        /// <para>
        /// The file system directory that corresponds to the nonlocalized Startup program group for all users. 
        /// Valid only for Microsoft Windows NT systems.
        /// </para>
        ///</summary>
        CommonAltStartup = 0x001e,

        /// <summary>
        /// <para>
        /// Version 5.0. The file system directory containing application data for all users. A typical path is 
        /// C:\Documents and Settings\All Users\Application Data.
        /// </para>
        ///</summary>
        CommonAppData = 0x0023,

        /// <summary>
        /// <para>
        /// The file system directory that contains files and folders that appear on the desktop for all users. 
        /// A typical path is C:\Documents and Settings\All Users\Desktop. Valid only for Windows NT systems.
        /// </para>
        ///</summary>
        CommonDesktopDirectory = 0x0019,

        /// <summary>
        /// <para>
        /// The file system directory that contains documents that are common to all users. A typical paths is 
        /// C:\Documents and Settings\All Users\Documents. Valid for Windows NT systems and Microsoft Windows 95 
        /// and Windows 98 systems with Shfolder.dll installed.
        /// </para>
        ///</summary>
        CommonDocuments = 0x002e,

        /// <summary>
        /// <para>
        /// The file system directory that serves as a common repository for favorite items common to all users. 
        /// Valid only for Windows NT systems.
        /// </para>
        ///</summary>
        CommonFavorites = 0x001f,

        /// <summary>
        /// <para>
        /// Version 6.0. The file system directory that serves as a repository for music files common to all users. 
        /// A typical path is C:\Documents and Settings\All Users\Documents\My Music.
        /// </para>
        ///</summary>
        CommonMusic = 0x0035,

        /// <summary>
        /// <para>
        /// Version 6.0. The file system directory that serves as a repository for image files common to all users. 
        /// A typical path is C:\Documents and Settings\All Users\Documents\My Pictures.
        /// </para>
        ///</summary>
        CommonPictures = 0x0036,

        /// <summary>
        /// <para>
        /// The file system directory that contains the directories for the common program groups that appear on the 
        /// Start menu for all users. A typical path is C:\Documents and Settings\All Users\Start Menu\Programs. 
        /// Valid only for Windows NT systems.
        /// </para>
        ///</summary>
        CommonPrograms = 0x0017,

        /// <summary>
        /// <para>
        /// The file system directory that contains the programs and folders that appear on the Start menu for all users. 
        /// A typical path is C:\Documents and Settings\All Users\Start Menu. Valid only for Windows NT systems.
        /// </para>
        ///</summary>
        CommonStartMenu = 0x0016,

        /// <summary>
        /// <para>
        /// The file system directory that contains the programs that appear in the Startup folder for all users. 
        /// A typical path is C:\Documents and Settings\All Users\Start Menu\Programs\Startup. Valid only for Windows NT systems.
        /// </para>
        ///</summary>
        CommonStartup = 0x0018,

        /// <summary>
        /// <para>
        /// The file system directory that contains the templates that are available to all users. A typical path is 
        /// C:\Documents and Settings\All Users\Templates. Valid only for Windows NT systems.
        /// </para>
        ///</summary>
        CommonTemplates = 0x002d,

        /// <summary>
        /// <para>
        /// Version 6.0. The file system directory that serves as a repository for video files common to all users. 
        /// A typical path is C:\Documents and Settings\All Users\Documents\My Videos.
        /// </para>
        ///</summary>
        CommonVideo = 0x0037,

        /// <summary>
        /// The virtual folder containing icons for the Control Panel applications.
        /// </summary>
        Controls = 0x0003,

        /// <summary>
        /// <para>
        /// The file system directory that serves as a common repository for Internet cookies. A typical path is 
        /// C:\Documents and Settings\username\Cookies.
        /// </para>
        ///</summary>
        Cookies = 0x0021,

        /// <summary>
        /// The virtual folder representing the Windows desktop, the root of the namespace.
        /// </summary>
        Desktop = 0x0000,

        /// <summary>
        /// <para>
        /// The file system directory used to physically store file objects on the desktop (not to be confused with 
        /// the desktop folder itself). A typical path is C:\Documents and Settings\username\Desktop.
        /// </para>
        ///</summary>
        DesktopDirectory = 0x0010,

        /// <summary>
        /// <para>
        /// The virtual folder representing My Computer, containing everything on the local computer: storage devices, 
        /// printers, and Control Panel. The folder may also contain mapped network drives.
        /// </para>
        ///</summary>
        MyComputer = 0x0011,

        /// <summary>
        /// <para>
        /// The file system directory that serves as a common repository for the user's favorite items. A typical path is 
        /// C:\Documents and Settings\username\Favorites.
        /// </para>
        ///</summary>
        Favorites = 0x0006,

        /// <summary>
        /// A virtual folder containing fonts. A typical path is C:\Windows\Fonts.
        /// </summary>
        Fonts = 0x0014,

        /// <summary>
        /// The file system directory that serves as a common repository for Internet history items.
        /// </summary>
        History = 0x0022,

        /// <summary>
        /// A virtual folder representing the Internet.
        /// </summary>
        Internet = 0x0001,

        /// <summary>
        /// <para>
        /// Version 4.72. The file system directory that serves as a common repository for Temporary Internet files. 
        /// A typical path is C:\Documents and Settings\username\Local Settings\Temporary Internet Files.
        /// </para>
        ///</summary>
        InternetCache = 0x0020,

        /// <summary>
        /// <para>
        /// Version 5.0. The file system directory that serves as a data repository for local (nonroaming) applications. 
        /// A typical path is C:\Documents and Settings\username\Local Settings\Application Data.
        /// </para>
        ///</summary>
        LocalAppData = 0x001c,

        /// <summary>
        /// Version 6.0. The virtual folder representing the My Documents desktop item.
        /// </summary>
        MyDocuments = 0x000c,

        /// <summary>
        /// <para>
        /// The file system directory that serves as a common repository for music files. A typical path is 
        /// C:\Documents and Settings\User\My Documents\My Music.
        /// </para>
        ///</summary>
        MyMusic = 0x000d,

        /// <summary>
        /// <para>
        /// Version 5.0. The file system directory that serves as a common repository for image files. 
        /// A typical path is C:\Documents and Settings\username\My Documents\My Pictures.
        /// </para>
        ///</summary>
        MyPictures = 0x0027,

        /// <summary>
        /// <para>
        /// Version 6.0. The file system directory that serves as a common repository for video files. 
        /// A typical path is C:\Documents and Settings\username\My Documents\My Videos.
        /// </para>
        ///</summary>
        MyVideo = 0x000e,

        /// <summary>
        /// <para>
        /// A file system directory containing the link objects that may exist in the My Network Places virtual folder. 
        /// It is not the same as CSIDL_NETWORK, which represents the network namespace root. 
        /// A typical path is C:\Documents and Settings\username\NetHood.
        /// </para>
        ///</summary>
        NetHood = 0x0013,

        /// <summary>
        /// <para>
        /// A virtual folder representing Network Neighborhood, the root of the network namespace hierarchy.
        /// </para>
        ///</summary>
        Network = 0x0012,

        /// <summary>
        /// <para>
        /// Version 6.0. The virtual folder representing the My Documents desktop item. This is equivalent to CSIDL_MYDOCUMENTS. 
        /// Previous to Version 6.0. The file system directory used to physically store a user's common repository of documents. 
        /// A typical path is C:\Documents and Settings\username\My Documents. This should be distinguished from the virtual 
        /// My Documents folder in the namespace. To access that virtual folder, use SHGetFolderLocation, which returns the 
        /// ITEMIDLIST for the virtual location, or refer to the technique described in Managing the File System.
        /// </para>
        ///</summary>
        Personal = 0x0005,

        /// <summary>
        /// The virtual folder containing installed printers.
        /// </summary>
        Printers = 0x0004,

        /// <summary>
        /// <para>
        /// The file system directory that contains the link objects that can exist in the Printers virtual folder. 
        /// A typical path is C:\Documents and Settings\username\PrintHood.
        /// </para>
        ///</summary>
        PrintHood = 0x001b,

        /// <summary>
        /// <para>
        /// Version 5.0. The user's profile folder. A typical path is C:\Documents and Settings\username. Applications should 
        /// not create files or folders at this level; they should put their data under the locations referred to by 
        /// CSIDL_APPDATA or CSIDL_LOCAL_APPDATA.
        /// </para>
        ///</summary>
        Profile = 0x0028,

        /// <summary>
        /// <para>
        /// Version 6.0. The file system directory containing user profile folders. A typical path is C:\Documents and Settings.
        /// </para>
        ///</summary>
        Profiles = 0x003e,

        /// <summary>
        /// Version 5.0. The Program Files folder. A typical path is C:\Program Files.
        /// </summary>
        ProgramFiles = 0x0026,

        /// <summary>
        /// <para>
        /// Version 5.0. A folder for components that are shared across applications. A typical path is C:\Program Files\Common. 
        /// Valid only for Windows NT, Windows 2000, and Windows XP systems. Not valid for Windows Millennium Edition (Windows Me).
        /// </para>
        ///</summary>
        ProgramFilesCommon = 0x002b,

        /// <summary>
        /// <para>
        /// The file system directory that contains the user's program groups (which are themselves file system directories). 
        /// A typical path is C:\Documents and Settings\username\Start Menu\Programs. 
        /// </para>
        ///</summary>
        Programs = 0x0002,

        /// <summary>
        /// <para>
        /// The file system directory that contains shortcuts to the user's most recently used documents. A typical path is 
        /// C:\Documents and Settings\username\My Recent Documents. To create a shortcut in this folder, use SHAddToRecentDocs. 
        /// In addition to creating the shortcut, this function updates the Shell's list of recent documents and adds the shortcut 
        /// to the My Recent Documents submenu of the Start menu.
        /// </para>
        ///</summary>
        Recent = 0x0008,

        /// <summary>
        /// <para>
        /// The file system directory that contains Send To menu items. A typical path is C:\Documents and Settings\username\SendTo.
        /// </para>
        ///</summary>
        SendTo = 0x0009,

        /// <summary>
        /// <para>
        /// The file system directory containing Start menu items. A typical path is C:\Documents and Settings\username\Start Menu.
        /// </para>
        ///</summary>
        StartMenu = 0x000b,

        /// <summary>
        /// <para>
        /// The file system directory that corresponds to the user's Startup program group. The system starts these programs 
        /// whenever any user logs onto Windows NT or starts Windows 95. 
        /// A typical path is C:\Documents and Settings\username\Start Menu\Programs\Startup.
        /// </para>
        ///</summary>
        Startup = 0x0007,

        /// <summary>
        /// Version 5.0. The Windows System folder. A typical path is C:\Windows\System32.
        /// </summary>
        System = 0x0025,

        /// <summary>
        /// <para>
        /// The file system directory that serves as a common repository for document templates. A typical path is 
        /// C:\Documents and Settings\username\Templates.
        /// </para>
        ///</summary>
        Templates = 0x0015,

        /// <summary>
        /// <para>
        /// Version 5.0. The Windows directory or SYSROOT. This corresponds to the %windir% or %SYSTEMROOT% environment variables. 
        /// A typical path is C:\Windows.
        /// </para>
        ///</summary>
        Windows = 0x0024
    }
}