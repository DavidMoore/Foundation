using System;
using Foundation.Services.Security;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services.Security
{
    [TestClass]
    public class SaltedHasherTestCase
    {
        [TestMethod]
        public void MD5HashAndCompare()
        {
            var test = "The quick brown fox jumps over the lazy dog";
            var result = SaltedHasher.MD5Hash(test);

            Assert.IsTrue(SaltedHasher.MD5Compare(test, result));
        }

        [TestMethod]
        public void SHA256HashAndCompare()
        {
            var test = "The quick brown fox jumps over the lazy dog";
            Console.WriteLine(test);

            var result = SaltedHasher.Sha256Hash(test);
            Console.WriteLine(result);

            Assert.IsTrue(SaltedHasher.Sha256Compare(test, result));
        }
    }
}