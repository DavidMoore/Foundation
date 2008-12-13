using Foundation.Data.ActiveRecord;
using Foundation.Data.Hierarchy;
using NUnit.Framework;

namespace Foundation.Tests.Data.Hierarchy
{
    [TestFixture]
    public class TreeActiveRecordRepositoryTests : DatabaseFixtureBase
    {
        TreeActiveRecordRepository<Category> repository;

        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(Category));
            repository = new TreeActiveRecordRepository<Category>();
        }

        [Test]
        public void Saving_single_node_gives_LeftValue_1_RightValue_2()
        {
            var category = new Category("Category1");
            repository.Save(category);
            Assert.AreEqual(1, category.TreeInfo.LeftValue);
            Assert.AreEqual(2, category.TreeInfo.RightValue);
        }

        [Test]
        public void IsDirty_gets_toggled_off_once_saved()
        {
            var category = new Category("Category1");
            Assert.IsFalse(category.TreeInfo.IsDirty);

            category.TreeInfo.RightValue = 1;
            Assert.IsTrue(category.TreeInfo.IsDirty);

            repository.Save(category);

            Assert.IsFalse(category.TreeInfo.IsDirty);
        }
    }
}