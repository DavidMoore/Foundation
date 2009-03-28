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
            var propertyInfo = typeof(ReflectUtilsFixture.DummyReflectionObject).GetProperty("StringProperty");

            Assert.IsTrue(propertyInfo.HasAttribute(typeof(ReflectUtilsFixture.DummyReflectionAttributeAttribute)));
            Assert.IsFalse(propertyInfo.HasAttribute(typeof(ReflectUtilsFixture.FooReflectionAttributeAttribute)));
            Assert.IsTrue(propertyInfo.HasAttribute(typeof(ReflectUtilsFixture.DummyReflectionAttributeAttribute), typeof(ReflectUtilsFixture.FooReflectionAttributeAttribute)));
            Assert.IsFalse(propertyInfo.HasAttribute(typeof(ReflectUtilsFixture.BarReflectionAttributeAttribute), typeof(ReflectUtilsFixture.FooReflectionAttributeAttribute)));
        }

        [Test]
        public void GetAttribute()
        {
            var propertyInfo = typeof(ReflectUtilsFixture.DummyReflectionObject).GetProperty("StringProperty");

            var attribute = propertyInfo.GetAttribute<ReflectUtilsFixture.DummyReflectionAttributeAttribute>();

            Assert.IsNotNull(attribute);
            Assert.IsInstanceOfType(typeof(ReflectUtilsFixture.DummyReflectionAttributeAttribute), attribute);
        }
    }
}