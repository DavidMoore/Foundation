using System.Linq;
using Foundation.Extensions;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests
{
    [TestClass]
    public class NamedPaginatedListTests
    {
        [TestMethod]
        public void AlphabeticPaginate()
        {
            var data = new[] { "aaa", "aab", "aac", "baa", "bab", "bac", "bad", "daaa", "daac" };

            var list = new NamedPaginatedCollection<string>(data, 1, 3,  x => "{0}-{1}".StringFormat( x.First(), x.Last() ) );

            Assert.AreEqual("aaa-aac", list.PageNames[0]);
            Assert.AreEqual("baa-bac", list.PageNames[1]);
            Assert.AreEqual("bad-daac", list.PageNames[2]);
        }
    }
}