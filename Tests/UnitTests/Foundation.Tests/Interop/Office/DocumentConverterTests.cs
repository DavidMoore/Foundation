using System;
using System.Collections;
using System.Text;
using System.Collections.Generic;
using System.Linq;
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

    public interface IWordDocument : IDisposable
    {
        IDictionary<string, string> Bookmarks { get; }
    }
}