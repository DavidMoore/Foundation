using System.IO;
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
    }
}