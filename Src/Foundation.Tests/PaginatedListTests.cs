using NUnit.Framework;

namespace Foundation.Tests
{
    [TestFixture]
    public class PaginatedListTests
    {
        [Test]
        public void Defaults()
        {
            var list = new PaginatedList<string>();
            Assert.IsNotNull(list);
            Assert.AreEqual(list.Page, 1);
            Assert.IsFalse(list.HasNextPage);
            Assert.IsFalse(list.HasPreviousPage);
            Assert.AreEqual(list.PageCount, 1);
            Assert.AreEqual(0, list.Count);
        }

        [Test]
        public void Setting_up_pagination_with_1_page_of_records_and_setting_total_count()
        {
            var results = new[] {"first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth"};

            var list = new PaginatedList<string>(results, 1, 5, 10);

            Assert.AreEqual(10, list.RecordCount);
            Assert.AreEqual(2, list.PageCount);
            Assert.AreEqual(1, list.Page);
            Assert.AreEqual(5, list.Count);
        }
    }
}