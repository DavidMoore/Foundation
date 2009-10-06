using System;
using System.IO;
using Foundation.Extensions;
using NUnit.Framework;

namespace Foundation.Tests.Extensions
{
    [TestFixture]
    public class DirectoryInfoExtensionsTests
    {
        [Test]
        public void GetFile_returns_null_when_file_not_found()
        {
            using(var dir = new TempDirectory())
            {
                Assert.IsNull(dir.DirectoryInfo.GetFile("does_not_exist.txt"));
            }
        }

        [Test, ExpectedException(typeof(InvalidOperationException))]
        public void GetFile_throws_exception_if_more_than_one_file_matches()
        {
            using(var dir = new TempDirectory())
            {
                dir.CreateTempFile("test1.txt");
                dir.CreateTempFile("test2.txt");

                dir.DirectoryInfo.GetFile("test*.txt");
            }
        }

        [Test]
        public void IsFile()
        {
            using( var dir = new TempDirectory())
            {
                // An existing directory is not a file
                Assert.IsFalse(dir.DirectoryInfo.IsFile());

                // A file without an extension that exists can still be detected as a file
                var file = dir.CreateTempFile("tempfile");
                Assert.IsTrue( new DirectoryInfo(file.FullName).IsFile() );
            }

            // A file without an extension and that doesn't exist can't be detected as a file
            Assert.IsFalse( new DirectoryInfo(@"D:\test").IsFile() );

            // A file that doesn't exist but has an extension is detected as a file
            Assert.IsTrue(new DirectoryInfo(@"D:\test.extension").IsFile());
        }
    }
}