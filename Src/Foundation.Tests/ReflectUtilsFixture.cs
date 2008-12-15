using System;
using System.Reflection;
using NUnit.Framework;

namespace Foundation.Tests
{
    [TestFixture]
    public class ReflectUtilsFixture
    {
        internal class DummyReflectionAttributeAttribute : Attribute {}
        internal class FooReflectionAttributeAttribute : Attribute { }
        internal class BarReflectionAttributeAttribute : Attribute { }

        [DummyReflectionAttribute]
        internal class DummyReflectionObject
        {
            [DummyReflectionAttribute]
            public string StringProperty { get; set; }

            [DummyReflectionAttribute]
            public int IntegerProperty { get; set; }

            [DummyReflectionAttribute]
            protected string ProtectedProperty { get; set; }

            [DummyReflectionAttribute]
            string PrivateProperty { get; set; }
        }

        [Test]
        public void Implements_returns_true_when_passed_type_implements_the_specified_interface()
        {
            Assert.IsTrue(ReflectUtils.Implements(typeof(ActivationContext), typeof(IDisposable)));
        }

        [Test]
        public void Returns_all_public_properties_with_specified_attribute()
        {
            var type = typeof(DummyReflectionObject);
            var attribute = typeof(DummyReflectionAttributeAttribute);

            var properties = ReflectUtils.GetPropertiesWithAttribute(type, attribute);
            Assert.AreEqual(2, properties.Count);
        }

        [Test]
        public void Returns_true_for_type_with_specified_attribute_when_calling_HasAttribute()
        {
            var type = typeof(DummyReflectionObject);
            var attribute = typeof(DummyReflectionAttributeAttribute);

            Assert.IsTrue(ReflectUtils.HasAttribute(type, attribute));
        }

        [Test]
        public void GetAttribute()
        {
            var attribute = ReflectUtils.GetAttribute<DummyReflectionAttributeAttribute>(new DummyReflectionObject());
            Assert.IsNotNull(attribute);
        }

        [Test]
        public void HasAttribute_for_PropertyInfo()
        {
            var propertyInfo = typeof(DummyReflectionObject).GetProperty("StringProperty");

            Assert.IsTrue(ReflectUtils.HasAttribute(propertyInfo, typeof(DummyReflectionAttributeAttribute)));
            Assert.IsFalse(ReflectUtils.HasAttribute(propertyInfo, typeof(FooReflectionAttributeAttribute)));
            Assert.IsTrue(ReflectUtils.HasAttribute(propertyInfo, typeof(DummyReflectionAttributeAttribute), typeof(FooReflectionAttributeAttribute)));
            Assert.IsFalse(ReflectUtils.HasAttribute(propertyInfo, typeof(BarReflectionAttributeAttribute), typeof(FooReflectionAttributeAttribute)));
        }
    }
}