using System;
using Foundation.TestHelpers;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.TestHelpers
{
    [TestClass]
    public class LipsumTests
    {
        [TestMethod]
        public void Generates_4_words()
        {
            var sentence = new Lipsum().Words(4);
            Assert.IsNotNull(sentence);
            Assert.IsFalse(sentence.EndsWith(" "));
            Console.WriteLine(sentence);
        }

        [TestMethod]
        public void Generates_sentence_starting_with_capital_and_ending_with_fullstop()
        {
            var sentence = new Lipsum().Sentences(1);
            Assert.IsNotNull(sentence);
            Assert.IsFalse(sentence.EndsWith(" "));
            Assert.IsTrue(sentence.EndsWith("."));
            Assert.IsFalse(sentence.Substring(0).Equals(sentence.Substring(0).ToLowerInvariant()));
            Console.WriteLine(sentence);
        }
    }
}