using Foundation.Extensions;
using NUnit.Framework;

namespace Foundation.Tests.Extensions
{
    [TestFixture]
    public class StringExtensionsTests
    {
        [Test]
        public void ToCamelCase()
        {
            Assert.AreEqual("theExpectedResult", "TheExpectedResult".ToCamelCase());
        }

        [Test]
        public void ToPascalCase()
        {
            Assert.AreEqual("TheExpectedResult", "theExpectedResult".ToPascalCase());
        }

        [Test]
        public void IsNullOrEmpty()
        {
            Assert.IsTrue( ((string)null).IsNullOrEmpty() );
            Assert.IsFalse( "blah".IsNullOrEmpty());
            Assert.IsTrue("".IsNullOrEmpty());
            Assert.IsTrue("     ".IsNullOrEmpty());
        }

        [Test]
        public void StripLeft()
        {
            Assert.AreEqual( "After the strip.", "Before the strip.After the strip.".StripLeft("Before the strip."));
        }

        [Test]
        public void StringFormat()
        {
            Assert.AreEqual( "After the format", "After {0} format".StringFormat("the"));
        }
    }
}