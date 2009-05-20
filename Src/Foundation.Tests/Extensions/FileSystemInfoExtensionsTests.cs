using Foundation.Extensions;
using NUnit.Framework;

namespace Foundation.Tests.Extensions
{
    [TestFixture]
    public class FileSystemInfoExtensionsTests
    {
        [Test]
        public void Rename()
        {
            using( var dir = new TempDirectory() )
            {
                var file = dir.CreateTempFile("before_rename.tmp");

                Assert.AreEqual(1, dir.DirectoryInfo.GetFiles("before_rename.tmp").Length);
                file.Rename("after_rename.tmp");
                Assert.AreEqual(0, dir.DirectoryInfo.GetFiles("before_rename.tmp").Length);
                Assert.AreEqual(1, dir.DirectoryInfo.GetFiles("after_rename.tmp").Length);
            }
        }
    }
}
