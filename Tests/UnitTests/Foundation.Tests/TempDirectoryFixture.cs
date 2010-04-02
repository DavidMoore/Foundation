using System.IO;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests
{
    [TestClass]
    public class TempDirectoryFixture
    {
        [TestMethod]
        public void Can_create_temporary_file()
        {
            using( var dir = new TempDirectory() )
            {
                var file = dir.CreateTempFile();
                Assert.IsTrue(file.Exists);
            }
        }

        [TestMethod]
        public void Can_create_temporary_file_with_a_specific_filename()
        {
            using( var dir = new TempDirectory() )
            {
                var file = dir.CreateTempFile("test.tmp");
                Assert.IsTrue(file.Exists);
                Assert.AreEqual(file.Name, "test.tmp");
                Assert.AreEqual(Path.Combine(dir.DirectoryInfo.FullName, "test.tmp"), file.FullName);
            }
        }

        [TestMethod]
        public void Can_write_to_temporary_file()
        {
            using( var dir = new TempDirectory() )
            {
                var file = dir.CreateTempFile();
                Assert.IsTrue(file.Exists);
                File.WriteAllText(file.FullName, "Test\r\nLine2");
                Assert.AreEqual(File.ReadAllText(file.FullName), "Test\r\nLine2");
            }
        }

        [TestMethod]
        public void Removes_directory_once_out_of_scope()
        {
            string path;

            using( var dir = new TempDirectory() )
            {
                path = dir.DirectoryInfo.FullName;
                Assert.IsTrue(Directory.Exists(path));
            }

            Assert.IsFalse(Directory.Exists(path));
        }

        [TestMethod]
        public void Temporary_file_gets_removed_properly_when_out_of_scope()
        {
            string filename;

            using( var dir = new TempDirectory() )
            {
                var file = dir.CreateTempFile();
                Assert.IsTrue(file.Exists);
                filename = file.FullName;
            }

            Assert.IsFalse(File.Exists(filename));
        }
    }
}