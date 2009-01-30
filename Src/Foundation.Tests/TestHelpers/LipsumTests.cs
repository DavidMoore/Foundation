using System;
using Foundation.TestHelpers;
using NUnit.Framework;

namespace Foundation.Tests.TestHelpers
{
    [TestFixture]
    public class LipsumTests
    {
        [Test]
        public void Generates_4_words()
        {
            var sentence = new Lipsum().Words(4);
            Assert.IsNotNull(sentence);
            Assert.IsFalse(sentence.EndsWith(" "));
            Console.WriteLine(sentence);
        }

        [Test]
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