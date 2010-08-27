namespace Foundation.Windows
{
    /// <summary>
    /// Error when loading a library using <see cref="Win32Api.LoadLibraryEx"/>.
    /// </summary>
    public class LoadLibraryException : BaseException
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="LoadLibraryException"/> class.
        /// </summary>
        /// <param name="file">The filename of the module being loaded.</param>
        /// <param name="lastWin32Error">The Win32 error code.</param>
        public LoadLibraryException(string file, int lastWin32Error)
            : base("Error when loading module \"{0}\". Error code: {1}", file, lastWin32Error) {}
    }
}