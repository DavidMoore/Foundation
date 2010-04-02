using Foundation.Services.Security;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services.Security
{
    [TestClass]
    public class HasherTestCase
    {
        [TestMethod]
        public void MD5Compare()
        {
            var test = "The quick brown fox jumps over the lazy dog";
            var hash = "9e107d9d372bb6826bd81d3542a419d6";

            Assert.IsTrue(Hasher.MD5Compare(test, hash));
        }

        [TestMethod]
        public void MD5Hash()
        {
            var test = "The quick brown fox jumps over the lazy dog";

            var result = Hasher.MD5Hash(test);

            Assert.AreEqual("9e107d9d372bb6826bd81d3542a419d6", result);
        }

        [TestMethod]
        public void SHA256Compare()
        {
            var test = "The quick brown fox jumps over the lazy dog";
            var hash = "d7a8fbb307d7809469ca9abcb0082e4f8d5651e46d3cdb762d02d0bf37c9e592";

            Assert.IsTrue(Hasher.Sha256Compare(test, hash));
        }

        [TestMethod]
        public void SHA256Hash()
        {
            var test = "The quick brown fox jumps over the lazy dog";

            var result = Hasher.Sha256Hash(test);

            Assert.AreEqual("d7a8fbb307d7809469ca9abcb0082e4f8d5651e46d3cdb762d02d0bf37c9e592", result);
        }
    }
}