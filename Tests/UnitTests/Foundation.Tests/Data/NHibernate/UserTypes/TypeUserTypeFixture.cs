using System;
using System.Linq;
using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Data.Hibernate.UserTypes;
using Foundation.Services.Repository;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Property = Castle.ActiveRecord.PropertyAttribute;

namespace Foundation.Tests.Data.NHibernate.UserTypes
{
    [TestClass]
    public class TypeUserTypeFixture : DatabaseFixture
    {
        [ActiveRecord]
        internal class DummyClassWithTypeProperty
        {
            [PrimaryKey]
            public int Id { get; set; }

            [Castle.ActiveRecord.Property(ColumnType = TypeUserType.TypeName)]
            public Type DummyType { get; set; }
        }

        IRepository<DummyClassWithTypeProperty> repository;

        [TestInitialize]
        public override void Setup()
        {
            base.Setup();
            repository = new ActiveRecordRepository<DummyClassWithTypeProperty>();
        }

        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(DummyClassWithTypeProperty));
        }

        [TestMethod]
        public void Can_save()
        {
            var dummy = new DummyClassWithTypeProperty {DummyType = typeof(DateTime)};
            repository.Save(dummy);
        }

        [TestMethod]
        public void Can_update()
        {
            var dummy = new DummyClassWithTypeProperty {DummyType = typeof(DateTime)};
            repository.Save(dummy);
            dummy.DummyType = typeof(TimeSpan);
            repository.Save(dummy);
            Assert.AreEqual(typeof(TimeSpan), dummy.DummyType);
        }

        [TestMethod]
        public void Null_Type_is_saved_and_fetched_as_null()
        {
            var dummy = new DummyClassWithTypeProperty();
            repository.Save(dummy);
            Assert.IsNull(dummy.DummyType);
            Assert.IsNull(repository.Query().Single(instance => instance.Id.Equals(1)).DummyType);
        }

        [TestMethod]
        public void Type_name_is_assembly_qualified()
        {
            // TODO: Find a way to inspect the string data
            var dummy = new DummyClassWithTypeProperty {DummyType = typeof(DateTime)};
            repository.Save(dummy);
            Assert.AreEqual(typeof(DateTime).AssemblyQualifiedName, dummy.DummyType.AssemblyQualifiedName);
        }
    }
}