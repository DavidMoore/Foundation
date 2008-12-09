using System;
using System.IO;
using log4net;

namespace Foundation
{
    /// <summary>
    /// Automatically creates a temporary directory in the system's
    /// temporary directory, removing the directory and all contains
    /// files and subdirectories when it goes out of scope.
    /// </summary>
    /// <example>
    /// string path;
    /// using(TempDirectory dir = new TempDirectory())
    /// {
    ///     path = dir.DirectoryInfo.FullName;
    ///     FileInfo file = File.Create(
    ///     file.WriteAllText("This is some test text");
    /// }
    /// if( !File.Exists(filename ) MessageWindow.Show("Temp file was deleted!");
    /// </example>
    public class TempDirectory : IDisposable
    {
        readonly DirectoryInfo directoryInfo;
        ILog logger;
        Type type;

        /// <summary>
        /// Creates a new temporary directory, which will automatically
        /// be deleted when it goes out of scope
        /// </summary>
        public TempDirectory()
        {
            directoryInfo = new DirectoryInfo(GetTempDirectory());
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
        public DirectoryInfo DirectoryInfo { get { return directoryInfo; } }

        #region IDisposable Members

        ///<summary>
        /// Deletes the temporary dir once out of scope or disposed
        ///</summary>
        ///<filterpriority>2</filterpriority>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        #endregion

        static string GetTempDirectory()
        {
            var path = Path.Combine(Path.GetTempPath(), Guid.NewGuid().ToString());
            Directory.CreateDirectory(path);
            return path;
        }

        /// <summary>
        /// Frees up managed resources
        /// </summary>
        /// <param name="disposing"></param>
        protected virtual void Dispose(bool disposing)
        {
            if( !disposing || directoryInfo == null || !directoryInfo.Exists ) return;

            try
            {
                directoryInfo.Delete(true);
            }
            catch(IOException ioe)
            {
                if( Logger.IsWarnEnabled ) Logger.Warn(ioe.Message, ioe);
            }
        }

        /// <summary>
        /// Creates a temporary file in the directory
        /// </summary>
        /// <returns></returns>
        public FileInfo CreateTempFile()
        {
            return CreateTempFile(Guid.NewGuid().ToString());
        }

        /// <summary>
        /// Creates a temporary file in the directory using the specified name
        /// </summary>
        /// <param name="s"></param>
        /// <returns></returns>
        public FileInfo CreateTempFile(string s)
        {
            var file = new FileInfo(Path.Combine(DirectoryInfo.FullName, s));
            file.Create().Close();
            return file;
        }
    }
}