using System;
using System.IO;
using NUnit.Framework;

namespace Foundation.Tests
{
    [TestFixture]
    public class TempFileFixture
    {
        [Test]
        public void Can_open_for_writing_and_read_back()
        {
            using( var file = new TempFile() )
            {
                const byte data = 0xFF;

                using( var stream = file.FileInfo.OpenWrite() )
                {
                    stream.WriteByte(data);
                }

                using( var stream = file.FileInfo.OpenRead() )
                {
                    Assert.AreEqual(data, stream.ReadByte());
                }
            }
        }

        [Test]
        public void Can_read_and_write_text()
        {
            using( var file = new TempFile() )
            {
                var text = TestStrings.Internationalisation;
                file.WriteAllText(text);
                Assert.AreEqual(text, file.ReadAllText());
            }
        }

        [Test]
        public void Should_create_temporary_file()
        {
            using( var file = new TempFile() )
            {
                Assert.IsTrue(file.FileInfo.Exists);
            }
        }

        [Test]
        public void Should_delete_temporary_file_when_finished()
        {
            string filename;

            using( var file = new TempFile() )
            {
                filename = file.FileInfo.FullName;
                Assert.IsTrue(file.FileInfo.Exists);
            }

            Assert.IsFalse(File.Exists(filename));
        }

        [Test]
        public void Allows_constructor_argument_to_choose_filename()
        {
            using( var file = new TempFile("{0}.gif"))
            {
                file.FileInfo.Refresh();
                Assert.IsTrue(file.FileInfo.Name.EndsWith(".gif", StringComparison.OrdinalIgnoreCase));
                Assert.IsTrue(file.FileInfo.Exists);
            }
        }

        [Test]
        public void Should_gracefully_handle_error_if_file_is_locked_when_trying_to_delete_on_disposal()
        {
            FileStream stream = null;
            string filename = null;

            try
            {
                using( var file = new TempFile() )
                {
                    filename = file.FileInfo.FullName;
                    stream = file.FileInfo.OpenWrite();
                    stream.Lock(0, 255);
                }
            }
            finally
            {
                if( stream != null )
                {
                    stream.Unlock(0, 255);
                    stream.Close();
                }
                if( !string.IsNullOrEmpty(filename) ) File.Delete(filename);
            }
        }
    }
}