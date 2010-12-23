using System;
using System.Linq;
using Foundation.ExtensionMethods;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.ExtensionMethods
{
    [TestClass]
    public class StreamExtensionsTests
    {
        [TestMethod]
        public void ReadChunks()
        {
            const int chunkSize = 1024;

            var random = new Random();

            // Use a random amount of chunks; 5 to 15
            var chunks = random.Next(5, 15);

            using (var temp = new TempFile())
            {
                // Write the chunks to the file
                using (var stream = temp.FileInfo.OpenWrite())
                {
                    for (var i = chunks; i > 0; i--)
                    {
                        var buffer = Enumerable.Repeat<byte>(255, chunkSize).ToArray();
                        stream.Write(buffer, 0, chunkSize);
                    }
                }

                temp.FileInfo.Refresh();

                var fileLength = temp.FileInfo.Length;

                // Now read in the chunks
                var chunkCount = 0;
                var totalBytes = 0;

                foreach (var chunk in temp.FileInfo.OpenRead().ReadChunks(chunkSize))
                {
                    Assert.IsTrue(  chunk.All(b => b == 255) );
                    chunkCount++;
                    totalBytes += chunk.Length;
                }

                Assert.AreEqual(chunks, chunkCount);
                Assert.AreEqual(fileLength, totalBytes);
            }
        }

        
    }
}