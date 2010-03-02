using System;
using System.Globalization;
using System.IO;
using Foundation.Extensions;
using Foundation.Services.Logging;
using Foundation.Services.Security;

namespace Foundation.Media
{
    public class ThumbnailCache : IThumbnailCache, IDisposable
    {
        protected virtual ILogger Logger
        {
            get; private set;
        }

        /// <summary>
        /// Creates a new media thumbnail cache in a GUID-named directory under the system temp dir
        /// </summary>
        public ThumbnailCache()
        {
            CacheDirectory = new DirectoryInfo( Path.Combine( Path.GetTempPath(), Guid.NewGuid().ToString() ) );
            CacheDirectory.Create();
        }

        /// <summary>
        /// Creates a new media thumbnail cache in a GUID-named directory under the system temp dir
        /// </summary>
        /// <param name="logger">The logging implementation to use for logging any messages</param>
        public ThumbnailCache(ILogger logger) : this()
        {
            Logger = logger;
        }

        /// <summary>
        /// Gets a file from the cache, identified by its hash
        /// </summary>
        /// <param name="originalImagePath"></param>
        /// <returns>The image file info, or null if it's not in the cache</returns>
        public FileInfo GetCacheFile(string originalImagePath)
        {
            return CacheDirectory.GetFile(originalImagePath);
        }

        /// <summary>
        /// Directory where the thumbnail files are cached
        /// </summary>
        public DirectoryInfo CacheDirectory { get; set; }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!disposing || CacheDirectory == null || !CacheDirectory.Exists) return;

            try
            {
                CacheDirectory.Delete(true);
            }
            catch(IOException ioe)
            {
                if (Logger == null) throw;
                Logger.Error(string.Format(CultureInfo.CurrentCulture, "Exception when deleting ThumbnailCache directory {0}! Exception was: {1}", CacheDirectory, ioe.Message), ioe);
            }
            
            CacheDirectory = null;
        }

        public static string GetCacheHash(string fileName, int width, int height)
        {
            return Hasher.MD5Hash(string.Concat(fileName, width, height));
        }

        /// <summary>
        /// Adds a thumbnail to the cache
        /// </summary>
        /// <param name="fileName"></param>
        /// <param name="width"></param>
        /// <param name="height"></param>
        public void Add(string fileName, int width, int height)
        {
            var hash = GetCacheHash(fileName, width, height);
            Add(hash, fileName);
        }

        /// <summary>
        /// Copies the specified file to the cache, under the hash as the unique identifier
        /// </summary>
        /// <param name="hash"></param>
        /// <param name="fileName"></param>
        public void Add(string hash, string fileName)
        {
            File.Copy(fileName, Path.Combine(CacheDirectory.FullName, hash) );
        }

        public FileInfo GetCacheFile(string fileName, int width, int height)
        {
            return GetCacheFile(GetCacheHash(fileName, width, height));
        }
    }
}