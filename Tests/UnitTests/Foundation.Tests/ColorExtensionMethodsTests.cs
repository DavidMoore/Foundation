using System.Drawing;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests
{
    [TestClass]
    public class ColorExtensionMethodsTests
    {
        [TestMethod]
        public void ToHtml()
        {
            Assert.AreEqual("Red", Color.Red.ToHtml());
            Assert.AreEqual("DarkSalmon", Color.DarkSalmon.ToHtml());
            Assert.AreEqual("#A7B0BF", ColorTranslator.FromHtml("#A7B0BF").ToHtml());
            Assert.AreEqual("#FF0000", ColorTranslator.FromHtml("#f00").ToHtml());
        }
    }
}