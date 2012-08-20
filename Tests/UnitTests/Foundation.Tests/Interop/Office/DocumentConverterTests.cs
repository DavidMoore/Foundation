using System;
using System.Collections;
using System.IO;
using System.IO.Packaging;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Documents;

using DocumentFormat.OpenXml.Packaging;

using Microsoft.VisualStudio.TestTools.UnitTesting;

using Moq;

namespace Foundation.Tests.Interop.Office
{
    [TestClass]
    public class DocumentConverterTests
    {
        [TestMethod]
        public void TestMethod1()
        {
            var document = new Mock<IWordDocument>();
        }
    }

    public interface IWordDocumentConverter : IDisposable
    {
        void Convert(IWordDocument document);
    }

    class WordDocumentToXpsConverter : IWordDocumentConverter
    {
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!disposing) return;
        }

        public void Convert(IWordDocument doc)
        {
            using (var stream = new MemoryStream(4096))
            using (var document = doc.GetWordprocessingDocument())
            using (var package = Package.Open(stream, FileMode.CreateNew, FileAccess.ReadWrite))
            {
                //document.GetPartsOfType<>()
                
            }
        }
    }

    public interface IWordDocument : IDisposable
    {
        IDictionary<string, string> Bookmarks { get; }
        
        WordprocessingDocument GetWordprocessingDocument();
    }
}