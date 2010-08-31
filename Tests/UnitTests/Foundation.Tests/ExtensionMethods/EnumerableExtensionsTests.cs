using System.Text;
using Foundation.ExtensionMethods;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.ExtensionMethods
{
    [TestClass]
    public class EnumerableExtensionsTests
    {
        [TestMethod]
        public void ToPaginatedList()
        {
            var list = new[] {"one", "two", "three"}.ToPaginatedList(1, 3);

            Assert.IsTrue(list is PaginatedCollection<string>);
            Assert.AreEqual(3, list.Count);
            Assert.AreEqual(1, list.Page);
            Assert.AreEqual(1, list.PageCount);
        }

        [TestMethod]
        public void ForEach()
        {
            var list = new[] {"one", "two", "three"};

            var sb = new StringBuilder();

            list.ForEach(s => sb.Append(s));

            Assert.AreEqual("onetwothree", sb.ToString());
        }
    }
}