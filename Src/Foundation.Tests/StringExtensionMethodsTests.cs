using NUnit.Framework;

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
    }
}