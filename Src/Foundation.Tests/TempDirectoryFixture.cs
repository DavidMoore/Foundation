using System.IO;
using NUnit.Framework;

namespace Foundation.Tests
{
    [TestFixture]
    public class TempDirectoryFixture
    {
        [Test]
        public void Can_create_temporary_file()
        {
            using( var dir = new TempDirectory() )
            {
                var file = dir.CreateTempFile();
                Assert.IsTrue(file.Exists);
            }
        }

        [Test]
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

        [Test]
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

        [Test]
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

        [Test]
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