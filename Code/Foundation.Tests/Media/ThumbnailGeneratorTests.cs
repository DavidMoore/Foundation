using System.IO;
using System.Reflection;
using Foundation.Media;
using NUnit.Framework;

namespace Foundation.Tests.Media
{
    [TestFixture]
    public class ThumbnailGeneratorTests
    {
        IThumbnailGenerator generator;

        [SetUp]
        public void Setup()
        {
            generator = new ThumbnailGenerator();
        }

        [Test, ExpectedException(typeof(FileNotFoundException))]
        public void FileNotFoundException_if_image_file_not_found()
        {
            generator.Generate("foo.jpg", "foo.png");
        }

        [Test]
        public void Same_aspect_to_same_aspect()
        {
            var sourceRect = generator.CalculateSourceRectangle(1024, 1024, 128, 128);
            Assert.AreEqual(0, sourceRect.X);
            Assert.AreEqual(0, sourceRect.Y);
            Assert.AreEqual(1024, sourceRect.Width);
            Assert.AreEqual(1024, sourceRect.Height);
        }

        [Test]
        public void Tall_aspect_to_tall_aspect()
        {
            // The original is 5 times taller than it is wide, but the thumbnail is only twice as tall as wide
            var sourceRect = generator.CalculateSourceRectangle(100, 500, 10, 20);
            Assert.AreEqual( 0, sourceRect.X );
            Assert.AreEqual( 150, sourceRect.Y );
            Assert.AreEqual( 100, sourceRect.Width );
            Assert.AreEqual( 200, sourceRect.Height );
        }

        [Test]
        public void Tall_aspect_to_wide_aspect()
        {
            var sourceRect = generator.CalculateSourceRectangle(1000, 5000, 200, 100);
            Assert.AreEqual(0, sourceRect.X);
            Assert.AreEqual(2250, sourceRect.Y);
            Assert.AreEqual(1000, sourceRect.Width);
            Assert.AreEqual(500, sourceRect.Height);
        }

        [Test]
        public void Tall_aspect_to_square_aspect()
        {
            var sourceRect = generator.CalculateSourceRectangle(1000, 5000, 200, 200);
            Assert.AreEqual(0, sourceRect.X);
            Assert.AreEqual(2000, sourceRect.Y);
            Assert.AreEqual(1000, sourceRect.Width);
            Assert.AreEqual(1000, sourceRect.Height);
        }

        [Test]
        public void Wide_aspect_to_tall_aspect()
        {
            var sourceRect = generator.CalculateSourceRectangle(5000, 1000, 100, 200);
            Assert.AreEqual(2250, sourceRect.X);
            Assert.AreEqual(0, sourceRect.Y);
            Assert.AreEqual(500, sourceRect.Width);
            Assert.AreEqual(1000, sourceRect.Height);
        }

        [Test]
        public void Wide_aspect_to_wide_aspect()
        {
            var sourceRect = generator.CalculateSourceRectangle(5000, 1000, 200, 100);
            Assert.AreEqual(2000, sourceRect.Width);
            Assert.AreEqual(1000, sourceRect.Height);
            Assert.AreEqual(1500, sourceRect.X);
            Assert.AreEqual(0, sourceRect.Y);

            sourceRect = generator.CalculateSourceRectangle(2000, 1000, 500, 100);
            Assert.AreEqual(2000, sourceRect.Width);
            Assert.AreEqual(400, sourceRect.Height);
            Assert.AreEqual(0, sourceRect.X);
            Assert.AreEqual(300, sourceRect.Y);
        }

        [Test]
        public void Wide_aspect_to_square_aspect()
        {
            var sourceRect = generator.CalculateSourceRectangle(5000, 1000, 100, 100);
            Assert.AreEqual(2000, sourceRect.X);
            Assert.AreEqual(0, sourceRect.Y);
            Assert.AreEqual(1000, sourceRect.Width);
            Assert.AreEqual(1000, sourceRect.Height);
        }

        [Test]
        public void Square_aspect_to_wide_aspect()
        {
            var sourceRect = generator.CalculateSourceRectangle(5000, 5000, 200, 100);
            Assert.AreEqual(5000, sourceRect.Width);
            Assert.AreEqual(2500, sourceRect.Height); 
            Assert.AreEqual(0, sourceRect.X);
            Assert.AreEqual(1250, sourceRect.Y);
        }

        [Test]
        public void Square_aspect_to_tall_aspect()
        {
            var sourceRect = generator.CalculateSourceRectangle(5000, 5000, 100, 200);
            Assert.AreEqual(2500, sourceRect.Width);
            Assert.AreEqual(5000, sourceRect.Height); 
            Assert.AreEqual(1250, sourceRect.X);
            Assert.AreEqual(0, sourceRect.Y);
        }

        [Test]
        public void Has_cache_property_which_defaults_to_ThumbnailCache()
        {
            Assert.IsNotNull(generator.Cache);
            Assert.IsInstanceOf(typeof(IThumbnailCache), generator.Cache );
            Assert.IsInstanceOf(typeof(ThumbnailCache), generator.Cache);
        }

        [Test]
        public void Creating_thumbnail_creates_new_entry_in_cache()
        {
            var cache = generator.Cache as ThumbnailCache;
            Assert.IsNotNull(cache);
            Assert.AreEqual(0, cache.CacheDirectory.GetFiles().Length);

            using( var thumb = new TempFile()) // This will be the location of the thumbnail
            using (var image = new TempFile("{0}.jpg")) // This is the test image we will make a thumb out of
            using (var destStream = image.FileInfo.OpenWrite()) // Writes the test image data to the test image file
            using (var imageStream = Assembly.GetExecutingAssembly().GetManifestResourceStream("Foundation.Tests.Resources.TestImage.jpg"))
            {
                var buffer = new byte[9012];
                var bytesRead = imageStream.Read(buffer, 0, buffer.Length);
                while (bytesRead > 0)
                {
                    destStream.Write(buffer, 0, bytesRead);
                    bytesRead = imageStream.Read(buffer, 0, buffer.Length);
                }

                destStream.Close();
                imageStream.Close();

                // Create thumbnail
                generator.Generate(image.FileInfo.FullName, thumb.FileInfo.FullName);
            }

            Assert.AreEqual(1, (generator.Cache as ThumbnailCache).CacheDirectory.GetFiles().Length);
        }
    }
}