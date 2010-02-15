using System;
using System.IO;
using System.Linq;
using NUnit.Framework;

namespace Foundation.Tests
{
    [TestFixture]
    public class ReflectUtilsFixture
    {
        internal class DummyReflectionAttributeAttribute : Attribute { }

        internal class FooReflectionAttributeAttribute : Attribute { }

        internal class BarReflectionAttributeAttribute : Attribute { }

        [AttributeUsage(AttributeTargets.Class, AllowMultiple = true)]
        internal class DuplicateAttributeAttribute : Attribute
        {
            public int Value { get; set; }

            public DuplicateAttributeAttribute(int value)
            {
                Value = value;
            }
        }

        [DummyReflectionAttribute]
        [DuplicateAttribute(1)]
        [DuplicateAttribute(2)]
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
        public void GetAttribute()
        {
            var attribute = ReflectUtils.GetAttribute<DummyReflectionAttributeAttribute>(new DummyReflectionObject());
            Assert.IsNotNull(attribute);
        }

        [Test, ExpectedException(typeof(InvalidOperationException))]
        public void GetAttribute_throws_exception_if_more_than_one_instance_found()
        {
            ReflectUtils.GetAttribute<DuplicateAttributeAttribute>(new DummyReflectionObject());
        }

        [Test]
        public void GetAttributes()
        {
            var attributes = ReflectUtils.GetAttributes<DuplicateAttributeAttribute>(new DummyReflectionObject());
            Assert.AreEqual(2, attributes.Count());
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

        [Test, ExpectedException(typeof(ArgumentNullException))]
        public void LoadAssembly_throws_ArgumentNullException_if_FileSystemInfo_is_null()
        {
            ReflectUtils.LoadAssembly( (FileSystemInfo)null);
        }

        [Test, ExpectedException(typeof(ArgumentException))]
        public void LoadAssembly_throws_ArgumentException_if_fileName_is_null()
        {
            ReflectUtils.LoadAssembly((string)null);
        }

        [Test, ExpectedException(typeof(ArgumentException))]
        public void LoadAssembly_throws_ArgumentException_if_fileName_is_empty()
        {
            ReflectUtils.LoadAssembly((string)null);
        }

        [Test]
        public void LoadAssembly_returns_null_if_BadImageFormatException_encountered()
        {
            var file = new FileInfo(Environment.ExpandEnvironmentVariables("%WinDir%\\regedit.exe"));

            Assert.IsNull(ReflectUtils.LoadAssembly(file));
            Assert.IsNull( ReflectUtils.LoadAssembly( file.FullName) );
        }

        [Test, ExpectedException(typeof(ArgumentNullException))]
        public void GetProductName_throws_ArgumentNullException_for_null_assembly()
        {
            ReflectUtils.GetProductName(null);
        }

        [Test]
        public void GetProductName()
        {
            Assert.AreEqual("Foundation", ReflectUtils.GetProductName(GetType().Assembly) );
        }
    }
}