using System;
using Foundation.Extensions;
using NUnit.Framework;

namespace Foundation.Tests.Extensions
{
    [TestFixture]
    public class TypeExtensionsTests
    {
        class TestClass
        {
            public DateTime Date1 { get; set; }
            public DateTime Date2 { get; set; }
            public string StringProperty { get; set; }
        }

        [Test, ExpectedException(typeof(FoundationException))]
        public void GetProperty_of_specific_type_throws_FoundationException_if_more_than_one_matching_property_found()
        {
            var property = typeof(TestClass).GetProperty(typeof(DateTime));
        }

        [Test]
        public void GetProperty_of_specific_type_returns_null_if_matching_property_not_found()
        {
            Assert.IsNull(typeof(TestClass).GetProperty(typeof(Guid)));
        }

        [Test]
        public void GetProperty_of_specific_type_returns_matching_property()
        {
            var property = typeof(TestClass).GetProperty(typeof(string));
            Assert.IsNotNull(property);
            Assert.AreEqual("StringProperty", property.Name);
        }
    }
}