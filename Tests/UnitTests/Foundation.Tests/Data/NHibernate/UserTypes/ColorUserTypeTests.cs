using System.Drawing;
using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Services.Repository;
using NUnit.Framework;

namespace Foundation.Tests.Data.NHibernate.UserTypes
{
    [TestFixture]
    public class ColorUserTypeTests : DatabaseFixtureBase
    {
        IRepository<DummyClassWithColorProperty> repository;
        Color colour;

        public override void FixtureSetup()
        {
            base.FixtureSetup();
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

        [Test]
        public void Can_save()
        {
            var dummy = new DummyClassWithColorProperty {Colour = colour};
            repository.Save(dummy);
        }

        [Test]
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