using System.Collections.Generic;
using System.Linq;
using Foundation.Data.Hierarchy;
using Foundation.Services.Repository;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Data.Hierarchy
{
    [TestClass]
    public class HierarchyTests : DatabaseFixture
    {
        [TestInitialize]
        public override void Setup()
        {
            base.Setup();
            repository = new ActiveRecordRepository<Category,int>();
            tree = CreateTree();
        }

        IList<Category> tree;
        IRepository<Category> repository;
        List<Category> flatList;

        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(Category), typeof(TreeInfo<Category>));
        }

        /// <summary>
        /// Creates a test tree hierarchy of the following levels:
        /// 
        /// Node1 (1,12)
        ///  Node1_1 (2,9)
        ///    Node1_1_1 (3,4)
        ///    Node1_1_2 (5,8)
        ///      Node1_1_2_1 (6,7)
        ///  Node1_2 (10,11)
        /// Node2 (13,14)
        /// Node3 (15,18)
        ///   Node3_1 (16,17)
        /// </summary>
        /// <returns></returns>
        public IList<Category> CreateTree()
        {
            var list = new List<Category>(3);

            var node1 = new Category("Node1");
            var node2 = new Category("Node2");
            var node3 = new Category("Node3");

            list.Add(node1);
            list.Add(node2);
            list.Add(node3);

            var node1_1 = new Category("Node1_1");
            var node1_2 = new Category("Node1_2");

            node1.Tree.Children.Add(node1_1);
            node1.Tree.Children.Add(node1_2);

            var node1_1_1 = new Category("Node1_1_1");
            var node1_1_2 = new Category("Node1_1_2");

            node1_1.Tree.Children.Add(node1_1_1);
            node1_1.Tree.Children.Add(node1_1_2);

            var node1_1_2_1 = new Category("Node1_1_2_1");
            node1_1_2.Tree.Children.Add(node1_1_2_1);

            var node3_1 = new Category("Node3_1");
            node3.Tree.Children.Add(node3_1);

            flatList = new List<Category> {node1, node1_1, node1_1_1, node1_1_2, node1_1_2_1, node1_2, node2, node3, node3_1};

            repository.Save(flatList.ToArray());
            repository.RebuildTree();

            return list;
        }

        [TestMethod]
        public void Adding_a_child_to_a_node_updates_the_child_parent()
        {
            var node1 = tree[0];
            Assert.AreEqual(node1, node1.Tree.Children[0].Tree.Parent);
        }

        [TestMethod]
        public void Child_collections_are_not_null()
        {
            var root = new Category("root");
            Assert.IsNotNull(root.Tree);
            Assert.IsNotNull(root.Tree.Siblings);
            Assert.IsNotNull(root.Tree.Children);
            Assert.IsNotNull(root.Tree.Ancestors);
            Assert.IsNotNull(root.Tree.Descendants);
        }

        [TestMethod]
        public void Get_ancestors()
        {
            Assert.AreEqual(9, repository.Query().Count());
            var results = repository.Ancestors(flatList.Single(i => i.Name.Equals("Node1_1_2_1")));
            Assert.AreEqual(3, results.Count);
            Assert.AreEqual("Node1", results[0].Name);
            Assert.AreEqual("Node1_1", results[1].Name);
            Assert.AreEqual("Node1_1_2", results[2].Name);
        }

        [TestMethod]
        public void Get_children()
        {
            Assert.AreEqual(9, repository.Query().Count());
            var results = repository.ListByParent(tree.Single(i => i.Name.Equals("Node1")));
            Assert.AreEqual(2, results.Count());
            Assert.AreEqual("Node1_1", results.First().Name);
            Assert.AreEqual("Node1_2", results.Skip(1).Single().Name);
        }

        [TestMethod]
        public void Get_descendants()
        {
            Assert.AreEqual(9, repository.Query().Count());
            var results = repository.ListDescendants(tree.Single(i => i.Name.Equals("Node1")));
            Assert.AreEqual(5, results.Count);
            Assert.AreEqual("Node1_1", results[0].Name);
            Assert.AreEqual("Node1_1_1", results[1].Name);
            Assert.AreEqual("Node1_1_2", results[2].Name);
            Assert.AreEqual("Node1_1_2_1", results[3].Name);
            Assert.AreEqual("Node1_2", results[4].Name);
        }

        [TestMethod]
        public void Get_parent()
        {
            Assert.AreEqual(9, repository.Query().Count());
            var node = flatList.Single(i => i.Name.Equals("Node1_1_2_1"));
            Assert.AreEqual("Node1_1_2", node.Tree.Parent.Name);
            Assert.AreEqual("Node1_1", node.Tree.Parent.Tree.Parent.Name);
            Assert.AreEqual("Node1", node.Tree.Parent.Tree.Parent.Tree.Parent.Name);
            Assert.IsNull(node.Tree.Parent.Tree.Parent.Tree.Parent.Tree.Parent);
        }

        [TestMethod]
        public void Get_root_nodes()
        {
            Assert.AreEqual(9, repository.Query().Count());
            var results = repository.ListByParent(null);
            Assert.AreEqual(3, results.Count());
        }

        [TestMethod]
        public void Get_siblings()
        {
            Assert.AreEqual(9, repository.Query().Count());

            var results = repository.ListSiblings(flatList.Single(i => i.Name.Equals("Node1_1")));
            Assert.AreEqual(1, results.Count);
            Assert.AreEqual("Node1_2", results[0].Name);

            results = repository.ListSiblings(flatList.Single(i => i.Name.Equals("Node1_1")), SiblingList.IncludeSelf);
            Assert.AreEqual(2, results.Count);
            Assert.AreEqual("Node1_1", results[0].Name);
            Assert.AreEqual("Node1_2", results[1].Name);

            results = repository.ListSiblings(flatList.Single(i => i.Name.Equals("Node1")));
            Assert.AreEqual(2, results.Count);
            Assert.AreEqual("Node2", results[0].Name);
            Assert.AreEqual("Node3", results[1].Name);

            results = repository.ListSiblings(flatList.Single(i => i.Name.Equals("Node1")), SiblingList.IncludeSelf);
            Assert.AreEqual(3, results.Count);
            Assert.AreEqual("Node1", results[0].Name);
            Assert.AreEqual("Node2", results[1].Name);
            Assert.AreEqual("Node3", results[2].Name);
        }

        [TestMethod]
        public void Has_expected_properties()
        {
            var root = new Category("root");
            Assert.IsNotNull(root.Tree);
            Assert.IsNull(root.Tree.Parent);
            Assert.AreEqual(0, root.Tree.LeftValue);
            Assert.AreEqual(0, root.Tree.RightValue);
            Assert.AreEqual(0, root.Tree.Siblings.Count);
            Assert.AreEqual(0, root.Tree.Children.Count);
            Assert.AreEqual(0, root.Tree.Ancestors.Count);
            Assert.AreEqual(0, root.Tree.Descendants.Count);
        }

        [TestMethod]
        public void RebuildTree()
        {
            Assert.AreEqual("Node1", flatList.Single(x => x.Tree.LeftValue == 1 && x.Tree.RightValue == 12).Name);
            Assert.AreEqual("Node1_1", flatList.Single(x => x.Tree.LeftValue == 2 && x.Tree.RightValue == 9).Name);
            Assert.AreEqual("Node1_1_1", flatList.Single(x => x.Tree.LeftValue == 3 && x.Tree.RightValue == 4).Name);
            Assert.AreEqual("Node1_1_2", flatList.Single(x => x.Tree.LeftValue == 5 && x.Tree.RightValue == 8).Name);
            Assert.AreEqual("Node1_1_2_1", flatList.Single(x => x.Tree.LeftValue == 6 && x.Tree.RightValue == 7).Name);
            Assert.AreEqual("Node1_2", flatList.Single(x => x.Tree.LeftValue == 10 && x.Tree.RightValue == 11).Name);
            Assert.AreEqual("Node2", flatList.Single(x => x.Tree.LeftValue == 13 && x.Tree.RightValue == 14).Name);
            Assert.AreEqual("Node3", flatList.Single(x => x.Tree.LeftValue == 15 && x.Tree.RightValue == 18).Name);
            Assert.AreEqual("Node3_1", flatList.Single(x => x.Tree.LeftValue == 16 && x.Tree.RightValue == 17).Name);
        }

        [TestMethod]
        public void TreeInfo_is_not_null()
        {
            var root = new Category("root");
            Assert.IsNotNull(root.Tree);
        }
    }
}