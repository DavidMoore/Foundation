using System;
using System.IO;
using Foundation.Lucene;
using Lucene.Net.Analysis;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Lucene
{
    [TestClass]
    public class SnowballAnalyzerFixture
    {
        protected virtual void AssertAnalyzesTo(Analyzer analyzer, String input, String[] output)
        {
            var tokenStream = analyzer.TokenStream("dummyFieldName", new StringReader(input));
            for( var i = 0; i < output.Length; i++ )
            {
                var t = tokenStream.Next();
                Assert.IsNotNull(t);
                Assert.AreEqual(output[i], t.TermText());
            }
            Assert.IsNull(tokenStream.Next());
            tokenStream.Close();
        }

        [TestMethod]
        public void English_words_are_stemmed()
        {
            Analyzer a = new SnowballAnalyzer();
            AssertAnalyzesTo(a, "he abhorred accents", new[] {"he", "abhor", "accent"});
        }
    }
}