using System;
using System.Linq;
using System.Collections.Generic;
using Foundation.Models;
using Foundation.Services.Security;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests
{
    [TestClass]
    public class PaginatedListTests
    {
        [TestMethod]
        public void Defaults()
        {
            var list = new PaginatedCollection<string>();
            Assert.IsNotNull(list);
            Assert.AreEqual(list.Page, 1);
            Assert.IsFalse(list.HasNextPage);
            Assert.IsFalse(list.HasPreviousPage);
            Assert.AreEqual(list.PageCount, 1);
            Assert.AreEqual(0, list.Count);
        }

        [TestMethod]
        public void Setting_up_pagination_with_1_page_of_records_and_setting_total_count()
        {
            var results = new[] {"first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth"};

            var list = new PaginatedCollection<string>(results, 1, 5, 10);

            Assert.AreEqual(10, list.RecordCount);
            Assert.AreEqual(2, list.PageCount);
            Assert.AreEqual(1, list.Page);
            Assert.AreEqual(5, list.Count);
        }

        [TestMethod]
        public void Returns_expected_records_on_page_2()
        {
            var results = new[] { "first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth" };

            var list = new PaginatedCollection<string>(results, 2, 5, 10);

            Assert.AreEqual(10, list.RecordCount);
            Assert.AreEqual(2, list.PageCount);
            Assert.AreEqual(2, list.Page);
            Assert.AreEqual(5, list.Count);

            Assert.IsTrue(list[0].Equals("sixth"));
            Assert.IsTrue(list[1].Equals("seventh"));
            Assert.IsTrue(list[2].Equals("eighth"));
            Assert.IsTrue(list[3].Equals("ninth"));
            Assert.IsTrue(list[4].Equals("tenth"));
        }

        [TestMethod]
        public void Pages_have_names_defaulting_to_numbers()
        {
            var results = new[] { "first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth" };

            var names = new PaginatedCollection<string>(results, 1, 2, 10).PageNames.ToList();

            Assert.AreEqual("1", names[0]);
            Assert.AreEqual("2", names[1]);
            Assert.AreEqual("3", names[2]);
            Assert.AreEqual("4", names[3]);
            Assert.AreEqual("5", names[4]);
        }

        [TestMethod]
        public void Does_not_skip_records_if_passed_source_is_less_than_or_equal_to_page_size()
        {
            var list = new PaginatedCollection<string>( new[]{"third","fourth"}, 2, 2, 10);

            Assert.AreEqual("third", list[0]);
            Assert.AreEqual("fourth", list[1]);
        }
    }
}