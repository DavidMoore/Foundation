using System;
using System.IO;
using Foundation.Lucene;
using Lucene.Net.Analysis;
using NUnit.Framework;

namespace Foundation.Tests.Lucene
{
    [TestFixture]
    public class SnowballAnalyzerFixture
    {
        protected virtual void AssertAnalyzesTo(Analyzer analyzer, String input, String[] output)
        {
            TokenStream tokenStream = analyzer.TokenStream("dummyFieldName", new StringReader(input));
            for( int i = 0; i < output.Length; i++ )
            {
                Token t = tokenStream.Next();
                Assert.IsNotNull(t);
                Assert.AreEqual(output[i], t.TermText());
            }
            Assert.IsNull(tokenStream.Next());
            tokenStream.Close();
        }

        [Test]
        public void English_words_are_stemmed()
        {
            Analyzer a = new SnowballAnalyzer();
            AssertAnalyzesTo(a, "he abhorred accents", new[] {"he", "abhor", "accent"});
        }
    }
}