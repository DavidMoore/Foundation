using System;
using System.Globalization;
using System.IO;
using log4net;

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
        ILog logger;
        Type type;

        /// <summary>
        /// Creates a new temporary file, which ensures the temporary
        /// file is deleted once the object is disposed
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
            var nameWithoutExtension = fileInfo.Name.Substring(0, fileInfo.Name.Length - fileInfo.Extension.Length);

            // Get the new name
            var newName = string.Format(CultureInfo.CurrentCulture, name, nameWithoutExtension);

            fileInfo.MoveTo( Path.Combine(fileInfo.DirectoryName, newName ) );
        }

        protected virtual Type MyType
        {
            get
            {
                if( type == null ) type = GetType();
                return type;
            }
        }

        protected virtual ILog Logger
        {
            get
            {
                if( logger == null ) logger = LogManager.GetLogger(MyType);
                return logger;
            }
        }

        /// <summary>
        /// Handle to the temporary file
        /// </summary>
        public FileInfo FileInfo { get { return fileInfo; } }

        #region IDisposable Members

        ///<summary>
        /// Deletes the temporary file once out of scope or disposed
        ///</summary>
        ///<filterpriority>2</filterpriority>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        #endregion

        /// <summary>
        /// Frees up managed resources
        /// </summary>
        /// <param name="disposing"></param>
        protected virtual void Dispose(bool disposing)
        {
            if( !disposing || fileInfo == null || !fileInfo.Exists ) return;

            try
            {
                fileInfo.Delete();
            }
            catch(IOException ioe)
            {
                if( Logger.IsWarnEnabled ) Logger.Warn(ioe.Message, ioe);
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