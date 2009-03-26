using System;
using System.IO;
using Foundation.Media;
using NUnit.Framework;

namespace Foundation.Tests.Media
{
    [TestFixture]
    public class ThumbnailCacheTests
    {
        ThumbnailCache cache;

        [SetUp]
        public void Setup()
        {
            cache = new ThumbnailCache();
        }

        [TearDown]
        public void Cleanup()
        {
            if( cache != null ) cache.Dispose();
        }

        [Test]
        public void Creates_subdir_in_temporary_directory_by_default()
        {
            var directory = cache.CacheDirectory;

            Assert.IsNotNull(directory);

            var tempDirPath = Path.GetTempPath();

            Assert.IsTrue( directory.FullName.StartsWith(tempDirPath,StringComparison.OrdinalIgnoreCase ) );

            Assert.IsTrue( directory.Exists);
        }

        [Test]
        public void Dispose_deletes_directory_and_all_within()
        {
            DirectoryInfo dir;

            using (var cache = new ThumbnailCache())
            {
                dir = cache.CacheDirectory;
            }

            dir.Refresh();
            Assert.IsFalse(dir.Exists);
        }

        [Test]
        public void Generates_cache_filename_using_hash_of_original_filename_and_dimensions()
        {
            var originalName = @"C:\Test.jpg";
            var width = 150;
            var height = 150;
            var cacheName = cache.GetCacheHash(originalName, width, height);
            Console.WriteLine(cacheName);

            Assert.AreEqual("9af7e7184738e0dd3e53641051ab5768", cacheName);
        }

        [Test]
        public void GetCacheFile_by_hash_returns_null_if_file_is_not_cached()
        {
            Assert.IsNull(cache.GetCacheFile("9af7e7184738e0dd3e53641051ab5768"));
        }

        [Test]
        public void Add_takes_filename_and_dimensions_and_creates_new_file_in_cache()
        {
            using( var temp = new TempFile())
            {
                File.WriteAllText( temp.FileInfo.FullName, "Test Data");
                cache.Add(temp.FileInfo.FullName, 100, 100);
                var cached = cache.GetCacheFile(temp.FileInfo.FullName, 100, 100);
                Assert.IsNotNull(cached);
                Assert.AreEqual("Test Data", File.ReadAllText(cached.FullName));
            }
        }
    }
}