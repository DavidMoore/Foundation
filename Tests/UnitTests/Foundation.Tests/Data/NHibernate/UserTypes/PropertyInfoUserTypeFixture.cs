using System;
using System.Reflection;
using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Data.Hibernate.UserTypes;
using Foundation.Services.Repository;
using NUnit.Framework;
using Property = Castle.ActiveRecord.PropertyAttribute;

namespace Foundation.Tests.Data.NHibernate.UserTypes
{
    [TestFixture]
    public class PropertyInfoUserTypeFixture : DatabaseFixtureBase
    {
        IRepository<DummyClassWithPropertyInfoProperty> repository;
        PropertyInfo propertyInfo;

        public override void FixtureSetup()
        {
            base.FixtureSetup();
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

            [Property(ColumnType = PropertyInfoUserType.TypeName)]
            public PropertyInfo DummyPropertyInfo { get; set; }
        }

        [Test]
        public void Can_save()
        {
            var dummy = new DummyClassWithPropertyInfoProperty {DummyPropertyInfo = propertyInfo};
            repository.Save(dummy);
        }

        [Test]
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