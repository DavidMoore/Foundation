using Foundation.Net;
using NUnit.Framework;

namespace Foundation.Tests.Net
{
    [TestFixture]
    public class MimeTypeDetectTests
    {
        [Test]
        public void FromExtension()
        {
            var detector = new MimeTypeDetector();

            var jpeg = MimeTypes.Image.Jpeg;

            Assert.AreEqual(jpeg, MimeTypeDetector.FromExtension("jpg") );
        }
    }
}
