using Foundation.Extensions;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Extensions
{
    [TestClass]
    public class PropertyInfoExtensionsTests
    {
        [TestMethod]
        public void HasAttribute()
        {
            var propertyInfo = typeof(ReflectUtilsFixture.DummyReflectionObject).GetProperty("StringProperty");

            Assert.IsTrue(propertyInfo.HasAttribute(typeof(ReflectUtilsFixture.DummyReflectionAttributeAttribute)));
            Assert.IsFalse(propertyInfo.HasAttribute(typeof(ReflectUtilsFixture.FooReflectionAttributeAttribute)));
            Assert.IsTrue(propertyInfo.HasAttribute(typeof(ReflectUtilsFixture.DummyReflectionAttributeAttribute), typeof(ReflectUtilsFixture.FooReflectionAttributeAttribute)));
            Assert.IsFalse(propertyInfo.HasAttribute(typeof(ReflectUtilsFixture.BarReflectionAttributeAttribute), typeof(ReflectUtilsFixture.FooReflectionAttributeAttribute)));
        }

        [TestMethod]
        public void GetAttribute()
        {
            var propertyInfo = typeof(ReflectUtilsFixture.DummyReflectionObject).GetProperty("StringProperty");

            var attribute = propertyInfo.GetAttribute<ReflectUtilsFixture.DummyReflectionAttributeAttribute>();

            Assert.IsNotNull(attribute);
            Assert.IsInstanceOfType(attribute, typeof(ReflectUtilsFixture.DummyReflectionAttributeAttribute));
        }
    }
}