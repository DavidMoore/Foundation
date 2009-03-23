using System;
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
    }
}