using Foundation.Extensions;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Extensions
{
    [TestClass]
    public class StringExtensionsTests
    {
        [TestMethod]
        public void ToCamelCase()
        {
            Assert.AreEqual("theExpectedResult", "TheExpectedResult".ToCamelCase());
        }

        [TestMethod]
        public void ToPascalCase()
        {
            Assert.AreEqual("TheExpectedResult", "theExpectedResult".ToPascalCase());
        }

        [TestMethod]
        public void IsNullOrEmpty()
        {
            Assert.IsTrue( ((string)null).IsNullOrEmpty() );
            Assert.IsFalse( "blah".IsNullOrEmpty());
            Assert.IsTrue("".IsNullOrEmpty());
            Assert.IsTrue("     ".IsNullOrEmpty());
        }

        [TestMethod]
        public void StripLeft()
        {
            Assert.AreEqual( "After the strip.", "Before the strip.After the strip.".StripLeft("Before the strip."));
        }

        [TestMethod]
        public void StringFormat()
        {
            Assert.AreEqual( "After the format", "After {0} format".StringFormat("the"));
        }
    }
}