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
            var jpeg = MimeTypesImage.Jpeg;

            Assert.AreEqual(jpeg, MimeTypeDetector.FromExtension("jpg") );
        }
    }
}