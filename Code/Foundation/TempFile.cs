using System;
using System.Globalization;
using System.IO;
using System.Runtime.InteropServices;
using Foundation.Windows;

namespace Foundation
{
    /// <summary>
    /// Automatically creates a temporary file in the system's
    /// temporary directory, removing the file from the system when it
    /// goes out of scope.
    /// </summary>
    /// <example>
    /// string filename;
    /// using(TempFile file = new TempFile())
    /// {
    ///     filename = file.FileInfo.FullName;
    ///     Console.WriteLine("About to write to temporary file: {0}", filename);
    ///     file.WriteAllText("This is some test text");
    /// }
    /// if( !File.Exists(filename ) MessageWindow.Show("Temp file was deleted!");
    /// </example>
    public class TempFile : IDisposable
    {
        readonly FileInfo fileInfo;

        /// <summary>
        /// Creates a new temporary file, which ensures the temporary
        /// file is deleted once the object is disposed.
        /// </summary>
        public TempFile()
        {
            fileInfo = new FileInfo(Path.GetTempFileName());
        }

        /// <summary>
        /// Creates a temporary file, using the passed format string to
        /// create the name. Parameter 0 is the generated temporary filename.
        /// e.g. to create a temp file with a .jpg extension, the passed
        /// name should be "{0}.jpg"
        /// </summary>
        /// <param name="name">The string format for the name, taking {0} as the generated temp file name</param>
        public TempFile(string name) : this()
        {
            // Strip the extension
            var nameWithoutExtension = Path.GetFileNameWithoutExtension(fileInfo.Name);
            
            // Get the new name
            var newName = string.Format(CultureInfo.CurrentCulture, name, nameWithoutExtension);

            fileInfo.MoveTo( Path.Combine(fileInfo.DirectoryName, newName ) );
        }
        
        /// <summary>
        /// Handle to the temporary file.
        /// </summary>
        public FileInfo FileInfo { get { return fileInfo; } }
        
        ///<summary>
        /// Deletes the temporary file once out of scope or disposed.
        ///</summary>
        ///<filterpriority>2</filterpriority>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        /// <summary>
        /// Frees up managed resources.
        /// </summary>
        /// <param name="disposing"></param>
        void Dispose(bool disposing)
        {
            if( !disposing || fileInfo == null ) return;
            
            // If the file doesn't exist, we don't have to do anything.
            fileInfo.Refresh();
            if(!fileInfo.Exists ) return;

            try
            {
                fileInfo.Delete();
            }
            catch(IOException ioe)
            {
                try
                {
                    // If we can't delete the temp file now (likely because it's locked for some reason),
                    // we can schedule to delete it on reboot when the handles on it should be gone. We need to
                    // be an administrator to do this.
                    if (Win32Api.IO.MoveFileEx(fileInfo.FullName, null, Win32Api.IO.MoveFileFlags.DelayUntilReboot)) return;

                    throw new FoundationException("Couldn't schedule delete of locked file '{0}' at reboot.", 
                        Marshal.GetExceptionForHR(Marshal.GetHRForLastWin32Error()));
                }
                catch (Exception)
                {
                    FoundationEventLog.Error(ioe, "Couldn't delete temporary file '{0}'.", fileInfo);
                }                
            }
            catch (Exception ex)
            {
                FoundationEventLog.Error(ex, "Couldn't delete temporary file '{0}'.", fileInfo);
            } 
        }

        /// <summary>Opens a text file, reads all lines of the file, and then closes the file.</summary>
        /// <returns>The contents of the file</returns>
        public string ReadAllText()
        {
            return File.ReadAllText(fileInfo.FullName);
        }

        /// <summary>Creates a new file, writes the specified string array to the file using the specified encoding, and then closes the file. If the target file already exists, it is overwritten.</summary>
        /// <param name="contents"></param>
        public void WriteAllText(string contents)
        {
            File.WriteAllText(fileInfo.FullName, contents);
        }
    }
}