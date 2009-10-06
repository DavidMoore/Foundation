using NUnit.Framework;

namespace Foundation.Tests.Data.Hierarchy
{
    [TestFixture]
    public class TreeInfoTests
    {
        [Test]
        public void Gets_marked_dirty_if_LeftValue_is_changed()
        {
            var category = new Category("Category1");
            Assert.IsFalse(category.TreeInfo.IsDirty);

            category.TreeInfo.LeftValue = 1;
            Assert.IsTrue(category.TreeInfo.IsDirty);
        }

        [Test]
        public void Gets_marked_dirty_if_Parent_is_changed()
        {
            var category = new Category("Category1");
            Assert.IsFalse(category.TreeInfo.IsDirty);

            category.TreeInfo.Parent = new Category("Category2");
            Assert.IsTrue(category.TreeInfo.IsDirty);
        }

        [Test]
        public void Gets_marked_dirty_if_RightValue_is_changed()
        {
            var category = new Category("Category1");
            Assert.IsFalse(category.TreeInfo.IsDirty);

            category.TreeInfo.RightValue = 1;
            Assert.IsTrue(category.TreeInfo.IsDirty);
        }
    }
}