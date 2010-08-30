using System;
using Foundation.Data.Hierarchy;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Data.Hierarchy
{
    [TestClass]
    public class TreeInfoTests
    {
        [TestMethod]
        public void Tree_property()
        {
            Category category = new Category();

            Assert.IsInstanceOfType(category, typeof(ITreeEntity<Category,Guid>));

            Assert.IsNotNull(category.Tree);
            Assert.IsNull(category.Tree.Parent);
            Assert.IsNotNull(category.Tree.Children);
            Assert.AreEqual(category, category.Tree.Children.Parent);
            Assert.AreEqual(0, category.Tree.LeftValue);
            Assert.AreEqual(0, category.Tree.RightValue);
            Assert.AreEqual(false, category.Tree.IsDirty);
        }

        [TestMethod]
        public void Gets_marked_dirty_if_left_value_is_changed()
        {
            var category = new Category("Category1");
            Assert.IsFalse(category.Tree.IsDirty);

            category.Tree.LeftValue = 1;
            Assert.IsTrue(category.Tree.IsDirty);
        }

        [TestMethod]
        public void Gets_marked_dirty_if_parent_is_changed()
        {
            var category = new Category("Category1");
            Assert.IsFalse(category.Tree.IsDirty);

            category.Tree.Parent = new Category("Category2");
            Assert.IsTrue(category.Tree.IsDirty);
        }

        [TestMethod]
        public void Gets_marked_dirty_if_right_value_is_changed()
        {
            var category = new Category("Category1");
            Assert.IsFalse(category.Tree.IsDirty);

            category.Tree.RightValue = 1;
            Assert.IsTrue(category.Tree.IsDirty);
        }

        [TestMethod]
        public void Setting_parent_will_remove_the_child_from_its_previous_parents_children()
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
        public void Setting_parent_will_add_the_child_to_its_new_parents_children()
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
        public void Adding_child_by_setting_parent_or_adding_to_children_will_not_add_duplicates()
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
