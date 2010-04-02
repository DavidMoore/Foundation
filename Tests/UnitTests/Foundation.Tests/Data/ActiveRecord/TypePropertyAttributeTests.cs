using System;
using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Services.Repository;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Data.ActiveRecord
{
    [TestClass]
    public class TypePropertyAttributeTests : DatabaseFixture
    {
        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(DummyClassWithTypePropertyAttribute));
        }

        IRepository<DummyClassWithTypePropertyAttribute> repository;

        [TestInitialize]
        public override void Setup()
        {
            base.Setup();
            repository = new ActiveRecordRepository<DummyClassWithTypePropertyAttribute>();
        }

        [ActiveRecord]
        internal class DummyClassWithTypePropertyAttribute
        {
            [PrimaryKey]
            public int Id { get; set; }

            [TypeProperty]
            public Type DummyType { get; set; }
        }

        [TestMethod]
        public void Can_save_and_load()
        {
            var dummy = new DummyClassWithTypePropertyAttribute {DummyType = typeof(DateTime)};
            repository.Save(dummy);
            Assert.AreEqual(1, dummy.Id);
            Assert.AreEqual(typeof(DateTime), dummy.DummyType);
            Assert.AreEqual(typeof(DateTime).AssemblyQualifiedName, dummy.DummyType.AssemblyQualifiedName);
        }
    }
}