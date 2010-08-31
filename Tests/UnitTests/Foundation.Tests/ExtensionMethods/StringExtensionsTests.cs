using System.Linq;
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

        [TestMethod]
        public void IsValidEmail()
        {
            var validAddresses = new[]
                                   {
                                       "l3tt3rsAndNumb3rs@domain.com",
                                       "has-dash@domain.com",
                                       "hasApostrophe.o'leary@domain.org",
                                       "uncommonTLD@domain.museum",
                                       "uncommonTLD@domain.travel",
                                       "uncommonTLD@domain.mobi",
                                       "countryCodeTLD@domain.uk",
                                       "countryCodeTLD@domain.rw",
                                       "lettersInDomain@911.com",
                                       "underscore_inLocal@domain.net",
                                       "IPInsteadOfDomain@127.0.0.1",
                                       "IPAndPort@127.0.0.1:25",
                                       "subdomain@sub.domain.com",
                                       "local@dash-inDomain.com",
                                       "dot.inLocal@foo.com",
                                       "a@singleLetterLocal.org",
                                       "singleLetterDomain@x.org",
                                       "&*=?^+{}'~@validCharsInLocal.net",
                                       "foor@bar.newTLD"
                                   };

            var invalidAddresses = new[]
                                       {
                                           "missingDomain@.com",
                                           "@missingLocal.org",
                                           "missingatSign.net",
                                           "missingDot@com",
                                           "two@@signs.com",
                                           "colonButNoPort@127.0.0.1:",
                                           "",
                                           "someone-else@127.0.0.1.26",
                                           ".localStartsWithDot@domain.com",
                                           "localEndsWithDot.@domain.com",
                                           "two..consecutiveDots@domain.com",
                                           "domainStartsWithDash@-domain.com",
                                           "domainEndsWithDash@domain-.com",
                                           "numbersInTLD@domain.c0m",
                                           "missingTLD@domain.",
                                           "! \"#$%(),/;<>[]`|@invalidCharsInLocal.org",
                                           "invalidCharsInDomain@! \"#$%(),/;<>_[]`|.org",
                                           "local@SecondLevelDomainNamesAreInvalidIfTheyAreLongerThan64Charactersss.org"
                                       };

            Assert.IsTrue(validAddresses.All(s => s.IsValidEmail()) );
            Assert.IsTrue(invalidAddresses.All(s => !s.IsValidEmail()));
        }
    }
}