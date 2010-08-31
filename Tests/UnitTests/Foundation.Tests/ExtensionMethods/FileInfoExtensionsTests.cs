using System.IO;
using Foundation.ExtensionMethods;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.ExtensionMethods
{
    [TestClass]
    public class FileInfoExtensionsTests
    {
        [TestMethod]
        public void NameWithoutExtension()
        {
            Assert.AreEqual("test", new FileInfo(@"C:\test.txt").NameWithoutExtension());
            Assert.AreEqual("test.ing", new FileInfo(@"C:\test.ing.txt").NameWithoutExtension());
            Assert.AreEqual("test", new FileInfo(@"C:\test").NameWithoutExtension());
        }

        [TestMethod]
        public void ExtensionWithNoDot()
        {
            Assert.AreEqual("txt", new FileInfo(@"C:\test.txt").ExtensionWithoutDot());
            Assert.AreEqual("txt", new FileInfo(@"C:\test.ing.txt").ExtensionWithoutDot());
            Assert.AreEqual("", new FileInfo(@"C:\test").ExtensionWithoutDot());
        }
    }
}
