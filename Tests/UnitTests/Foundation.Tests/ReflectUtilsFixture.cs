using System;
using System.IO;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests
{
    [TestClass]
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

        [TestMethod]
        public void GetAttribute()
        {
            var attribute = ReflectionUtilities.GetAttribute<DummyReflectionAttributeAttribute>(new DummyReflectionObject());
            Assert.IsNotNull(attribute);
        }

        [TestMethod, ExpectedException(typeof(InvalidOperationException))]
        public void GetAttribute_throws_exception_if_more_than_one_instance_found()
        {
            ReflectionUtilities.GetAttribute<DuplicateAttributeAttribute>(new DummyReflectionObject());
        }

        [TestMethod]
        public void GetAttributes()
        {
            var attributes = ReflectionUtilities.GetAttributes<DuplicateAttributeAttribute>(new DummyReflectionObject());
            Assert.AreEqual(2, attributes.Count());
        }

        [TestMethod]
        public void GetAttribute_does_not_call_GetType_when_passed_instance_is_already_a_Type()
        {
            var attribute = ReflectionUtilities.GetAttribute<DummyReflectionAttributeAttribute>( typeof(DummyReflectionObject) );
            Assert.IsNotNull(attribute);
        }

        [TestMethod]
        public void GetAttribute_does_not_call_GetType_when_passed_instance_is_a_PropertyInfo()
        {
            var attribute = ReflectionUtilities.GetAttribute<DummyReflectionAttributeAttribute>(typeof(DummyReflectionObject).GetProperty("StringProperty"));
            Assert.IsNotNull(attribute);
        }

        [TestMethod]
        public void HasAttribute_for_PropertyInfo()
        {
            var propertyInfo = typeof(DummyReflectionObject).GetProperty("StringProperty");

            Assert.IsTrue(ReflectionUtilities.HasAttribute(propertyInfo, typeof(DummyReflectionAttributeAttribute)));
            Assert.IsFalse(ReflectionUtilities.HasAttribute(propertyInfo, typeof(FooReflectionAttributeAttribute)));
            Assert.IsTrue(ReflectionUtilities.HasAttribute(propertyInfo, typeof(DummyReflectionAttributeAttribute), typeof(FooReflectionAttributeAttribute)));
            Assert.IsFalse(ReflectionUtilities.HasAttribute(propertyInfo, typeof(BarReflectionAttributeAttribute), typeof(FooReflectionAttributeAttribute)));
        }

        [TestMethod]
        public void Implements_returns_true_when_passed_type_implements_the_specified_interface()
        {
            Assert.IsTrue(ReflectionUtilities.Implements(typeof(ActivationContext), typeof(IDisposable)));
        }

        [TestMethod]
        public void Returns_all_public_properties_with_specified_attribute()
        {
            var type = typeof(DummyReflectionObject);
            var attribute = typeof(DummyReflectionAttributeAttribute);

            var properties = ReflectionUtilities.GetPropertiesWithAttribute(type, attribute);
            Assert.AreEqual(2, properties.Count());
        }

        [TestMethod]
        public void Returns_true_for_type_with_specified_attribute_when_calling_HasAttribute()
        {
            var type = typeof(DummyReflectionObject);
            var attribute = typeof(DummyReflectionAttributeAttribute);

            Assert.IsTrue(ReflectionUtilities.HasAttribute(type, attribute));
        }

        [TestMethod, ExpectedException(typeof(ArgumentNullException))]
        public void LoadAssembly_throws_ArgumentNullException_if_FileSystemInfo_is_null()
        {
            ReflectionUtilities.LoadAssembly( (FileSystemInfo)null);
        }

        [TestMethod, ExpectedException(typeof(ArgumentException))]
        public void LoadAssembly_throws_ArgumentException_if_fileName_is_null()
        {
            ReflectionUtilities.LoadAssembly((string)null);
        }

        [TestMethod, ExpectedException(typeof(ArgumentException))]
        public void LoadAssembly_throws_ArgumentException_if_fileName_is_empty()
        {
            ReflectionUtilities.LoadAssembly((string)null);
        }

        [TestMethod]
        public void LoadAssembly_returns_null_if_BadImageFormatException_encountered()
        {
            var file = new FileInfo(Environment.ExpandEnvironmentVariables("%WinDir%\\regedit.exe"));

            Assert.IsNull(ReflectionUtilities.LoadAssembly(file));
            Assert.IsNull( ReflectionUtilities.LoadAssembly( file.FullName) );
        }

        [TestMethod, ExpectedException(typeof(ArgumentNullException))]
        public void GetProductName_throws_ArgumentNullException_for_null_assembly()
        {
            ReflectionUtilities.GetProductName(null);
        }

        [TestMethod]
        public void GetProductName()
        {
            Assert.AreEqual("Foundation .NET Library", ReflectionUtilities.GetProductName(GetType().Assembly) );
        }
    }
}