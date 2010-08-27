using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Data.Hierarchy
{
    [TestClass]
    public class TreeInfoTests
    {
        [TestMethod]
        public void Gets_marked_dirty_if_LeftValue_is_changed()
        {
            var category = new Category("Category1");
            Assert.IsFalse(category.Tree.IsDirty);

            category.Tree.LeftValue = 1;
            Assert.IsTrue(category.Tree.IsDirty);
        }

        [TestMethod]
        public void Gets_marked_dirty_if_Parent_is_changed()
        {
            var category = new Category("Category1");
            Assert.IsFalse(category.Tree.IsDirty);

            category.Tree.Parent = new Category("Category2");
            Assert.IsTrue(category.Tree.IsDirty);
        }

        [TestMethod]
        public void Gets_marked_dirty_if_RightValue_is_changed()
        {
            var category = new Category("Category1");
            Assert.IsFalse(category.Tree.IsDirty);

            category.Tree.RightValue = 1;
            Assert.IsTrue(category.Tree.IsDirty);
        }

        [TestMethod]
        public void Setting_Parent_will_remove_the_child_from_its_previous_Parents_children()
        {
            var parent = new Category("Parent");
            var parent2 = new Category("Parent2");
            var child = new Category("Child");

            // Add the child to the initial parent
            parent.Tree.Children.Add(child);
            Assert.AreEqual(child.Tree.Parent, parent);
            Assert.AreEqual(1, parent.Tree.Children.Count);

            // Now we'll change the child's parent
            child.Tree.Parent = parent2;

            // Child should have been removed from previous parent's children
            Assert.AreEqual(0, parent.Tree.Children.Count);
        }

        [TestMethod]
        public void Setting_Parent_will_add_the_child_to_its_new_Parents_children()
        {
            var parent = new Category("Parent");
            var child = new Category("Child");

            Assert.AreEqual(0, parent.Tree.Children.Count);

            // Add the child by setting the parent
            child.Tree.Parent = parent;

            Assert.AreEqual(child.Tree.Parent, parent);
            Assert.AreEqual(1, parent.Tree.Children.Count);
        }

        /// <summary>
        /// When you set a node's Parent, it will automatically update the Children collections
        /// of its previous and new Parent. You can also do the same thing by directly adding
        /// the node to the new Parent's Children. This method asserts that we don't inadvertently
        /// create duplicate entries of the child in the new Parent's Children collection
        /// when manipulating these properties.
        /// </summary>
        [TestMethod]
        public void Adding_child_by_setting_Parent_or_adding_to_Children_will_not_add_duplicates()
        {
            var parent = new Category("Parent");
            var child = new Category("Child");

            Assert.AreEqual(0, parent.Tree.Children.Count);

            child.Tree.Parent = parent;
            parent.Tree.Children.Add(child);

            Assert.AreEqual(1, parent.Tree.Children.Count);
        }
    }
}