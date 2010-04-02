using Foundation.Net;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Net
{
    [TestClass]
    public class MimeContentTypeTests
    {
        [TestMethod]
        public void Constructor_with_passed_full_type()
        {
            var type = new MimeContentType("image/jpeg");

            Assert.AreEqual("image", type.MajorType);
            Assert.AreEqual("jpeg", type.MinorType);
            Assert.AreEqual("image/jpeg", type.Full);
        }
    }
}
