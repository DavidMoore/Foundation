using System;
using Foundation.Data.Hierarchy;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Data.Hierarchy
{
    [TestClass]
    public class TreeEntityChildrenTests
    {
        [TestMethod]
        public void Adding_a_child_to_a_node_updates_the_child_parent()
        {
            var node1 = new Category("Node1");
            var node2 = new Category("Node2");
            node1.Tree.Children.Add(node2);
            Assert.AreEqual(node1, node2.Tree.Parent);
        }

        [TestMethod, ExpectedException(typeof(InvalidOperationException))]//, ExpectedMessage = "Please set the Parent property of the collection before trying to use it.")]
        public void Throws_exception_if_Parent_is_not_set()
        {
            new TreeEntityChildren<Category>(null) {new Category("Node1")};
        }

        [TestMethod, ExpectedException(typeof(ArgumentNullException))]//, ExpectedMessage = "Please set the Parent property of the collection before trying to use it.")]
        public void Throws_exception_if_item_is_null()
        {
            var node = new Category("Parent");
            node.Tree.Children.Add(null);
        }

        [TestMethod]
        public void Does_not_set_Parent_property_on_child_if_it_has_already_been_set_to_prevent_StackOverflow()
        {
            var node1 = new Category("Node1");
            var node2 = new Category("Node2");
            
            node2.Tree.Parent = node1;
            node1.Tree.Children.Add(node2);

            Assert.AreEqual(node1, node2.Tree.Parent);
        }
    }
}