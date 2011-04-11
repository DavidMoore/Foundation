using System.IO;
using Foundation.Windows;
using Foundation.Windows.IO;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Windows.IO
{
    [TestClass]
    public class FindDataTests
    {
        [TestMethod]
        public void CreatedDate()
        {
            using (var tempDir = new TempDirectory())
            {
                var tempFile = tempDir.CreateTempFile("firstFile.txt");

                var creationTime = tempFile.CreationTime;

                var data = new FindData();

                using (var handle = Win32Api.IO.FindFirstFile(tempFile.FullName, data))
                {
                    Assert.IsFalse(handle.IsInvalid);
                    Assert.IsFalse(handle.IsClosed);

                    var dataCreationTime = data.CreationTime.ToDateTime();
                    Assert.AreEqual(creationTime, dataCreationTime);
                }
            }
        }

        [TestMethod]
        public void DateModified()
        {
            using (var tempDir = new TempDirectory())
            {
                var tempFile = tempDir.CreateTempFile("firstFile.txt");

                var dateTime = tempFile.LastWriteTime;

                var data = new FindData();

                using (var handle = Win32Api.IO.FindFirstFile(tempFile.FullName, data))
                {
                    Assert.IsFalse(handle.IsInvalid);
                    Assert.IsFalse(handle.IsClosed);
                    var actualDateTime = data.LastWriteTime.ToDateTime();
                    Assert.AreEqual(dateTime, actualDateTime);
                }
            }
        }

        [TestMethod]
        public void FileSize()
        {
            using (var tempDir = new TempDirectory())
            {
                var tempFile = tempDir.CreateTempFile("firstFile.txt");
                File.WriteAllText(tempFile.FullName, @"abcde12345");

                var size = tempFile.Length;

                var data = new FindData();
                using (var handle = Win32Api.IO.FindFirstFile(tempFile.FullName, data))
                {
                    Assert.IsFalse(handle.IsInvalid);
                    Assert.IsFalse(handle.IsClosed);

                    var fileSize = data.FileSize;
                    Assert.AreEqual(size, fileSize);
                }
            }
        }
    }
}