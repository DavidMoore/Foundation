using System;
using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Services.Repository;
using NUnit.Framework;

namespace Foundation.Tests.Data.NHibernate.UserTypes
{
    [TestFixture]
    public class TypeUserTypeFixture : DatabaseFixtureBase
    {
        [ActiveRecord]
        internal class DummyClassWithTypeProperty
        {
            [PrimaryKey]
            public int Id { get; set; }

            [Property(ColumnType = "Foundation.Data.Hibernate.UserTypes.TypeUserType,Foundation")]
            public Type DummyType { get; set; }
        }

        IRepository<DummyClassWithTypeProperty> repository;

        public override void FixtureSetup()
        {
            base.FixtureSetup();
            repository = new ActiveRecordRepository<DummyClassWithTypeProperty>();
        }

        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(DummyClassWithTypeProperty));
        }

        [Test]
        public void Can_save()
        {
            var dummy = new DummyClassWithTypeProperty {DummyType = typeof(DateTime)};
            repository.Save(dummy);
        }

        [Test]
        public void Can_update()
        {
            var dummy = new DummyClassWithTypeProperty {DummyType = typeof(DateTime)};
            repository.Save(dummy);
            dummy.DummyType = typeof(TimeSpan);
            repository.Save(dummy);
            Assert.AreEqual(typeof(TimeSpan), dummy.DummyType);
        }

        [Test]
        public void Null_Type_is_saved_and_fetched_as_null()
        {
            var dummy = new DummyClassWithTypeProperty();
            repository.Save(dummy);
            Assert.IsNull(dummy.DummyType);
            Assert.IsNull(repository.Find(1).DummyType);
        }

        [Test]
        public void Type_name_is_assembly_qualified()
        {
            // TODO: Find a way to inspect the string data
            var dummy = new DummyClassWithTypeProperty {DummyType = typeof(DateTime)};
            repository.Save(dummy);
            Assert.AreEqual(typeof(DateTime).AssemblyQualifiedName, dummy.DummyType.AssemblyQualifiedName);
        }
    }
}