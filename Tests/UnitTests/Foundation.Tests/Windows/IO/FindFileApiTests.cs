using System;
using Foundation.Windows;
using Foundation.Windows.IO;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Windows.IO
{
    [TestClass]
    public class FindFileApiTests
    {
        [TestMethod]
        public void FindFirstFile()
        {
            using (var tempDir = new TempDirectory())
            {
                var tempFile = tempDir.CreateTempFile("firstFile.txt");

                var data = new FindData();

                using (var handle = Win32Api.IO.FindFirstFile(tempFile.FullName, data))
                {
                    Assert.IsFalse(handle.IsInvalid);
                    Assert.IsFalse(handle.IsClosed);
                }
            }
        }
    }
}
