using System.Drawing;
using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Services.Repository;
using NUnit.Framework;

namespace Foundation.Tests.Data.ActiveRecord
{
    [TestFixture]
    public class ColorPropertyAttributeTests : DatabaseFixtureBase
    {
        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(DummyClassWithColorProperty));
        }

        IRepository<DummyClassWithColorProperty> repository;

        public override void FixtureSetup()
        {
            base.FixtureSetup();
            repository = new ActiveRecordRepository<DummyClassWithColorProperty>();
        }

        [ActiveRecord]
        internal class DummyClassWithColorProperty
        {
            [PrimaryKey]
            public int Id { get; set; }

            [ColorProperty]
            public Color Colour { get; set; }
        }

        [Test]
        public void Can_save_and_load()
        {
            var dummy = new DummyClassWithColorProperty { Colour = Color.Red };
            repository.Save(dummy);
            Assert.AreEqual(1, dummy.Id);
            Assert.AreEqual(Color.Red, dummy.Colour);

            var loaded = repository.Find(1);
            Assert.AreEqual(Color.Red, loaded.Colour);
        }
    }
}