using System;
using System.Collections.Generic;
using System.Reflection;
using NUnit.Framework;

namespace Foundation.Tests
{
    [TestFixture]
    public class ReflectUtilsFixture
    {
        internal class DummyReflectionAttributeAttribute : Attribute {}

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
            Type type = typeof(DummyReflectionObject);
            Type attribute = typeof(DummyReflectionAttributeAttribute);

            List<PropertyInfo> properties = ReflectUtils.GetPropertiesWithAttribute(type, attribute);
            Assert.AreEqual(2, properties.Count);
        }

        [Test]
        public void Returns_true_for_type_with_specified_attribute_when_calling_HasAttribute()
        {
            Type type = typeof(DummyReflectionObject);
            Type attribute = typeof(DummyReflectionAttributeAttribute);

            Assert.IsTrue(ReflectUtils.HasAttribute(type, attribute));
        }
    }
}