using System.Drawing;
using System.Linq;
using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Services.Repository;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Data.ActiveRecord
{
    [TestClass]
    public class ColorPropertyAttributeTests : DatabaseFixture
    {
        static IRepository<DummyClassWithColorProperty> repository;

        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(DummyClassWithColorProperty));
        }

        [TestInitialize]
        public override void Setup()
        {
            base.Setup();
            repository = new ActiveRecordRepository<DummyClassWithColorProperty>();
        }

        [ActiveRecord]
        class DummyClassWithColorProperty
        {
            [PrimaryKey]
            public int Id { get; set; }

            [ColorProperty]
            public Color Colour { get; set; }
        }

        [TestMethod]
        public void Can_save_and_load()
        {
            var dummy = new DummyClassWithColorProperty {Colour = Color.Red};
            repository.Save(dummy);
            Assert.AreEqual(1, dummy.Id);
            Assert.AreEqual(Color.Red, dummy.Colour);

            var loaded = repository.List().Single( instance => instance.Id.Equals(1) );
            Assert.AreEqual(Color.Red, loaded.Colour);
        }
    }
}