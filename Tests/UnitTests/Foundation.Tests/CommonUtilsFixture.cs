using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests
{
    [TestClass]
    public class CommonUtilsFixture
    {
        [TestMethod]
        public void HtmlEncode()
        {
            const string rawText = "A 'quote' is <b>bold</b>";
            const string expected = "A &#39;quote&#39; is &lt;b&gt;bold&lt;/b&gt;";
            Assert.AreEqual(expected, CommonUtilities.HtmlEncode(rawText));
        }

        [TestMethod]
        public void HtmlEncode_with_linebreaks_to_html()
        {
            const string rawText = "A 'quote'\r\n is <b>bold</b>";
            const string expected = "A &#39;quote&#39;<br /> is &lt;b&gt;bold&lt;/b&gt;";
            Assert.AreEqual(expected, CommonUtilities.HtmlEncode(rawText, true));
        }

        [TestMethod]
        public void HtmlEncode_without_linebreaks_to_html()
        {
            const string rawText = "A 'quote'\r\n is <b>bold</b>";
            const string expected = "A &#39;quote&#39;\r\n is &lt;b&gt;bold&lt;/b&gt;";
            Assert.AreEqual(expected, CommonUtilities.HtmlEncode(rawText));
        }

        [TestMethod]
        public void LineBreaksToHtml()
        {
            const string stringWithLineBreaks = "Line1\nLine2\r\nLine3\r";
            const string expected = "Line1<br />Line2<br />Line3";
            Assert.AreEqual(expected, CommonUtilities.LineBreaksToHtml(stringWithLineBreaks));
        }

        [TestMethod]
        public void LineBreaksToHtml_handles_null_value_by_returning_empty_string()
        {
            Assert.AreEqual(string.Empty, CommonUtilities.LineBreaksToHtml(null));
        }
    }
}