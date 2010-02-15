using System.Text;
using Foundation.Extensions;
using NUnit.Framework;

namespace Foundation.Tests.Extensions
{
    [TestFixture]
    public class EnumerableExtensionsTests
    {
        [Test]
        public void ToPaginatedList()
        {
            var list = new[] {"one", "two", "three"}.ToPaginatedList(1, 3);

            Assert.IsTrue(list is PaginatedList<string>);
            Assert.AreEqual(3, list.Count);
            Assert.AreEqual(1, list.Page);
            Assert.AreEqual(1, list.PageCount);
        }

        [Test]
        public void ForEach()
        {
            var list = new[] {"one", "two", "three"};

            var sb = new StringBuilder();

            list.ForEach(s => sb.Append(s));

            Assert.AreEqual("onetwothree", sb.ToString());
        }
    }
}