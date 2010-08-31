using System;
using System.IO;

namespace Foundation.Media
{
    /// <summary>
    /// Contract for classes providing a media thumbnail cache
    /// </summary>
    public interface IThumbnailCache : IDisposable
    {
        /// <summary>
        /// Returns a handle to a cached thumbnail version of the original image, or
        /// null if there is no cache image found (or the cache image has expired due
        /// to the original image changing)
        /// </summary>
        /// <param name="originalImagePath"></param>
        /// <returns></returns>
        FileInfo GetCacheFile(string originalImagePath);

        /// <summary>
        /// Copies the specified file to the cache, under the hash as the unique identifier
        /// </summary>
        /// <param name="hash"></param>
        /// <param name="fileName"></param>
        void Add(string hash, string fileName);

        /// <summary>
        /// Adds a thumbnail to the cache
        /// </summary>
        /// <param name="fileName"></param>
        /// <param name="width"></param>
        /// <param name="height"></param>
        void Add(string fileName, int width, int height);
    }
}