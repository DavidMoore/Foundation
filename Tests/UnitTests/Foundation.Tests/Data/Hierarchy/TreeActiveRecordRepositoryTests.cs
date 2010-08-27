using Foundation.Data.ActiveRecord;
using Foundation.Data.Hierarchy;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Data.Hierarchy
{
    [TestClass]
    public class TreeActiveRecordRepositoryTests : DatabaseFixture
    {
        TreeActiveRecordRepository<Category> repository;

        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(Category));
            repository = new TreeActiveRecordRepository<Category>();
        }

        [TestMethod]
        public void IsDirty_gets_toggled_off_once_saved()
        {
            var category = new Category("Category1");
            Assert.IsFalse(category.Tree.IsDirty);

            category.Tree.RightValue = 1;
            Assert.IsTrue(category.Tree.IsDirty);

            repository.Save(category);

            Assert.IsFalse(category.Tree.IsDirty);
        }

        [TestMethod]
        public void Saving_single_node_gives_LeftValue_1_RightValue_2()
        {
            var category = new Category("Category1");
            repository.Save(category);
            Assert.AreEqual(1, category.Tree.LeftValue);
            Assert.AreEqual(2, category.Tree.RightValue);
        }
    }
}