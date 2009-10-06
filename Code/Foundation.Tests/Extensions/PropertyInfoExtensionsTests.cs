using Foundation.Extensions;
using NUnit.Framework;

namespace Foundation.Tests.Extensions
{
    [TestFixture]
    public class PropertyInfoExtensionsTests
    {
        [Test]
        public void HasAttribute()
        {
            var propertyInfo = typeof(DummyReflectionObject).GetProperty("StringProperty");

            Assert.IsTrue(propertyInfo.HasAttribute(typeof(DummyReflectionAttributeAttribute)));
            Assert.IsFalse(propertyInfo.HasAttribute(typeof(FooReflectionAttributeAttribute)));
            Assert.IsTrue(propertyInfo.HasAttribute(typeof(DummyReflectionAttributeAttribute), typeof(FooReflectionAttributeAttribute)));
            Assert.IsFalse(propertyInfo.HasAttribute(typeof(BarReflectionAttributeAttribute), typeof(FooReflectionAttributeAttribute)));
        }

        [Test]
        public void GetAttribute()
        {
            var propertyInfo = typeof(DummyReflectionObject).GetProperty("StringProperty");

            var attribute = propertyInfo.GetAttribute<DummyReflectionAttributeAttribute>();

            Assert.IsNotNull(attribute);
            Assert.IsInstanceOfType(typeof(DummyReflectionAttributeAttribute), attribute);
        }
    }
}