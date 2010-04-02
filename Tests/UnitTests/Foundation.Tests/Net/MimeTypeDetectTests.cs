using Foundation.Net;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Net
{
    [TestClass]
    public class MimeTypeDetectTests
    {
        [TestMethod]
        public void FromExtension()
        {
            var jpeg = MimeTypesImage.Jpeg;

            Assert.AreEqual(jpeg, MimeTypeDetector.FromExtension("jpg") );
        }
    }
}