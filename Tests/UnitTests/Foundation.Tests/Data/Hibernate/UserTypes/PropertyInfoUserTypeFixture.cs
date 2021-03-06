using System;
using System.Reflection;
using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Data.Hibernate.UserTypes;
using Foundation.Services.Repository;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Data.Hibernate.UserTypes
{
    [TestClass]
    public class PropertyInfoUserTypeFixture : DatabaseFixture
    {
        IRepository<DummyClassWithPropertyInfoProperty> repository;
        PropertyInfo propertyInfo;

        [TestInitialize]
        public override void Setup()
        {
            base.Setup();
            repository = new ActiveRecordRepository<DummyClassWithPropertyInfoProperty>();
            propertyInfo = typeof(DateTime).GetProperty("Hour");
        }

        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(DummyClassWithPropertyInfoProperty));
        }

        [ActiveRecord]
        internal class DummyClassWithPropertyInfoProperty
        {
            [PrimaryKey]
            public int Id { get; set; }

            [Castle.ActiveRecord.Property(ColumnType = PropertyInfoUserType.TypeName)]
            public PropertyInfo DummyPropertyInfo { get; set; }
        }

        [TestMethod]
        public void Can_save()
        {
            var dummy = new DummyClassWithPropertyInfoProperty {DummyPropertyInfo = propertyInfo};
            repository.Save(dummy);
        }

        [TestMethod]
        public void Can_update()
        {
            var dummy = new DummyClassWithPropertyInfoProperty {DummyPropertyInfo = propertyInfo};
            repository.Save(dummy);
            dummy.DummyPropertyInfo = propertyInfo;
            repository.Save(dummy);
            Assert.AreEqual(propertyInfo.Name, dummy.DummyPropertyInfo.Name);
            Assert.AreEqual(propertyInfo.DeclaringType.AssemblyQualifiedName, dummy.DummyPropertyInfo.DeclaringType.AssemblyQualifiedName);
        }
    }
}