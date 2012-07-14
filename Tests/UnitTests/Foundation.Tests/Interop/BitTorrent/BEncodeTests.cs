using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Interop.BitTorrent
{
    [TestClass]
    public class BEncodeTests
    {
        [TestMethod]
        public void String()
        {
            var encoder = new BEncodeReader("i12345e");

            Assert.AreEqual(12345, encoder.ReadInteger());
        }
    }

    public class BEncodeReader
    {
        readonly StreamReader reader;
        int integerMarkerValue = 'i';
        const int integerEndToken = 'e';

        public BEncodeReader(string content)
        {
            reader = new StreamReader(new MemoryStream(Encoding.UTF8.GetBytes(content)));
        }

        public int ReadInteger()
        {
            var integerMarker = reader.Read();

            var integerCharacters = reader.ReadUpTo(integerEndToken);

            return int.Parse(integerCharacters);
        }

        void AssertMarker(BEncodeBoundaryStart expectedValue, int actualValue)
        {
            //if( expectedValue != actualValue) throw new FoundationException("Expected");
        }
    }

    public static class StreamReaderExtensions
    {
        public static string ReadUpTo(this StreamReader reader, int character)
        {
            var sb = new StringBuilder();
            int currentCharacter;
            while ((currentCharacter = reader.Read()) != character)
            {
                sb.Append( (char)currentCharacter);
            }

            return sb.ToString();
        }
    }

    enum BEncodeBoundaryStart
    {
        None = 0,
        Number = 1,
        List = 2,
        Dictionary = 3,
        String = 4
    }
}
