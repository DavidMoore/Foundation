using System.Drawing;
using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Services.Repository;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Data.NHibernate.UserTypes
{
    [TestClass]
    public class ColorUserTypeTests : DatabaseFixture
    {
        IRepository<DummyClassWithColorProperty> repository;
        Color colour;

        [TestInitialize]
        public override void Setup()
        {
            base.Setup();
            repository = new ActiveRecordRepository<DummyClassWithColorProperty>();
            colour = Color.Red;
        }

        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(DummyClassWithColorProperty));
        }

        [ActiveRecord]
        internal class DummyClassWithColorProperty
        {
            [PrimaryKey]
            public int Id { get; set; }

            [ColorProperty]
            public Color Colour { get; set; }
        }

        [TestMethod]
        public void Can_save()
        {
            var dummy = new DummyClassWithColorProperty {Colour = colour};
            repository.Save(dummy);
        }

        [TestMethod]
        public void Can_update()
        {
            var dummy = new DummyClassWithColorProperty {Colour = colour};
            repository.Save(dummy);
            dummy.Colour = colour;
            repository.Save(dummy);
            Assert.AreEqual(Color.Red, dummy.Colour);
        }
    }
}