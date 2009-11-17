using System;
using System.Linq;
using NUnit.Framework;

namespace Foundation.Tests
{
    [TestFixture]
    public class ReflectUtilsFixture
    {
        [Test]
        public void GetAttribute()
        {
            var attribute = ReflectUtils.GetAttribute<DummyReflectionAttributeAttribute>(new DummyReflectionObject());
            Assert.IsNotNull(attribute);
        }

        [Test]
        public void GetAttribute_does_not_call_GetType_when_passed_instance_is_already_a_Type()
        {
            var attribute = ReflectUtils.GetAttribute<DummyReflectionAttributeAttribute>( typeof(DummyReflectionObject) );
            Assert.IsNotNull(attribute);
        }

        [Test]
        public void GetAttribute_does_not_call_GetType_when_passed_instance_is_a_PropertyInfo()
        {
            var attribute = ReflectUtils.GetAttribute<DummyReflectionAttributeAttribute>(typeof(DummyReflectionObject).GetProperty("StringProperty"));
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
            Assert.AreEqual(2, properties.Count());
        }

        [Test]
        public void Returns_true_for_type_with_specified_attribute_when_calling_HasAttribute()
        {
            var type = typeof(DummyReflectionObject);
            var attribute = typeof(DummyReflectionAttributeAttribute);

            Assert.IsTrue(ReflectUtils.HasAttribute(type, attribute));
        }
    }
}