using Foundation.Net;
using NUnit.Framework;

namespace Foundation.Tests.Net
{
    [TestFixture]
    public class MimeContentTypeTests
    {
        [Test]
        public void Constructor_with_passed_full_type()
        {
            var type = new MimeContentType("image/jpeg");

            Assert.AreEqual("image", type.Type);
            Assert.AreEqual("jpeg", type.SubType);
            Assert.AreEqual("image/jpeg", type.Full);
        }
    }
}
