using NUnit.Framework;

using Foundation;

namespace Foundation.Tests
{
    [TestFixture]
    public class StringExtensionMethodsTests
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
        }
    }
}