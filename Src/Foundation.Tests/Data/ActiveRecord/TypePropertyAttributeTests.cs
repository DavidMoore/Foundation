using System;
using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Services.Repository;
using NUnit.Framework;

namespace Foundation.Tests.Data.ActiveRecord
{
    [TestFixture]
    public class TypePropertyAttributeTests : DatabaseFixtureBase
    {
        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(DummyClassWithTypePropertyAttribute));
        }

        private IRepository<DummyClassWithTypePropertyAttribute> repository;

        public override void FixtureSetup()
        {
            base.FixtureSetup();
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

        [Test]
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
