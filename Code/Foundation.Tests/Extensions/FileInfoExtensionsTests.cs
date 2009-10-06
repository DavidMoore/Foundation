using System.IO;
using Foundation.Extensions;
using NUnit.Framework;

namespace Foundation.Tests.Extensions
{
    [TestFixture]
    public class FileInfoExtensionsTests
    {
        [Test]
        public void NameWithoutExtension()
        {
            Assert.AreEqual("test", new FileInfo(@"C:\test.txt").NameWithoutExtension());
            Assert.AreEqual("test.ing", new FileInfo(@"C:\test.ing.txt").NameWithoutExtension());
            Assert.AreEqual("test", new FileInfo(@"C:\test").NameWithoutExtension());
        }

        [Test]
        public void ExtensionWithNoDot()
        {
            Assert.AreEqual("txt", new FileInfo(@"C:\test.txt").ExtensionWithoutDot());
            Assert.AreEqual("txt", new FileInfo(@"C:\test.ing.txt").ExtensionWithoutDot());
            Assert.AreEqual("", new FileInfo(@"C:\test").ExtensionWithoutDot());
        }
    }
}
