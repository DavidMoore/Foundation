using System.Collections.Generic;
using Foundation.Data.ActiveRecord;
using Foundation.Data.Hierarchy;
using Foundation.Tests.Data.Hierarchy;
using NUnit.Framework;
using System.Linq;

namespace Foundation.Tests.Data.Hierarchy
{
    [TestFixture]
    public class HierarchyTests : DatabaseFixtureBase
    {
        IList<Category> tree;
        ITreeRepository<Category> repository;
        List<Category> flatList;

        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(Category), typeof(TreeInfo<Category>));
        }

        public override void Setup()
        {
            base.Setup();
            repository = new TreeActiveRecordRepository<Category>();
            tree = CreateTree();
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

            node1.TreeInfo.Children.Add(node1_1);
            node1.TreeInfo.Children.Add(node1_2);

            var node1_1_1 = new Category("Node1_1_1");
            var node1_1_2 = new Category("Node1_1_2");

            node1_1.TreeInfo.Children.Add(node1_1_1);
            node1_1.TreeInfo.Children.Add(node1_1_2);

            var node1_1_2_1 = new Category("Node1_1_2_1");
            node1_1_2.TreeInfo.Children.Add(node1_1_2_1);

            var node3_1 = new Category("Node3_1");
            node3.TreeInfo.Children.Add(node3_1);

            flatList = new List<Category> {node1, node1_1, node1_1_1, node1_1_2, node1_1_2_1, node1_2, node2, node3, node3_1};

            repository.Save(flatList.ToArray());
            repository.RebuildTree();

            return list;
        }

        [Test]
        public void RebuildTree()
        {
            Assert.AreEqual( "Node1", flatList.Single(x => x.TreeInfo.LeftValue == 1 && x.TreeInfo.RightValue == 12).Name );
            Assert.AreEqual("Node1_1", flatList.Single(x => x.TreeInfo.LeftValue == 2 && x.TreeInfo.RightValue == 9).Name);
            Assert.AreEqual("Node1_1_1", flatList.Single(x => x.TreeInfo.LeftValue == 3 && x.TreeInfo.RightValue == 4).Name);
            Assert.AreEqual("Node1_1_2", flatList.Single(x => x.TreeInfo.LeftValue == 5 && x.TreeInfo.RightValue == 8).Name);
            Assert.AreEqual("Node1_1_2_1", flatList.Single(x => x.TreeInfo.LeftValue == 6 && x.TreeInfo.RightValue == 7).Name);
            Assert.AreEqual("Node1_2", flatList.Single(x => x.TreeInfo.LeftValue == 10 && x.TreeInfo.RightValue == 11).Name);
            Assert.AreEqual("Node2", flatList.Single(x => x.TreeInfo.LeftValue == 13 && x.TreeInfo.RightValue == 14).Name);
            Assert.AreEqual("Node3", flatList.Single(x => x.TreeInfo.LeftValue == 15 && x.TreeInfo.RightValue == 18).Name);
            Assert.AreEqual("Node3_1", flatList.Single(x => x.TreeInfo.LeftValue == 16 && x.TreeInfo.RightValue == 17).Name);
        }

        [Test]
        public void Adding_a_child_to_a_node_updates_the_child_parent()
        {
            var node1 = tree[0];
            Assert.AreEqual(node1, node1.TreeInfo.Children[0].TreeInfo.Parent);
        }

        [Test]
        public void TreeInfo_is_not_null()
        {
            var root = new Category("root");
            Assert.IsNotNull(root.TreeInfo);
        }

        [Test]
        public void Child_collections_are_not_null()
        {
            var root = new Category("root");
            Assert.IsNotNull(root.TreeInfo);
            Assert.IsNotNull(root.TreeInfo.Siblings);
            Assert.IsNotNull(root.TreeInfo.Children);
            Assert.IsNotNull(root.TreeInfo.Ancestors);
            Assert.IsNotNull(root.TreeInfo.Descendants);
        }

        [Test]
        public void Has_expected_properties()
        {
            var root = new Category("root");
            Assert.IsNotNull(root.TreeInfo);
            Assert.IsNull(root.TreeInfo.Parent);
            Assert.AreEqual(0, root.TreeInfo.LeftValue);
            Assert.AreEqual(0, root.TreeInfo.RightValue);
            Assert.AreEqual(0, root.TreeInfo.Siblings.Count);
            Assert.AreEqual(0, root.TreeInfo.Children.Count);
            Assert.AreEqual(0, root.TreeInfo.Ancestors.Count);
            Assert.AreEqual(0, root.TreeInfo.Descendants.Count);
        }

        [Test]
        public void Get_root_nodes()
        {
            Assert.AreEqual(9, repository.List().Count);
            var results = repository.ListByParent(null);
            Assert.AreEqual(3, results.Count);
        }

        [Test]
        public void Get_children()
        {
            Assert.AreEqual(9, repository.List().Count);
            var results = repository.ListByParent( tree.Single( i => i.Name.Equals("Node1")) );
            Assert.AreEqual(2, results.Count);
            Assert.AreEqual("Node1_1", results[0].Name);
            Assert.AreEqual("Node1_2", results[1].Name);
        }

        [Test]
        public void Get_descendants()
        {
            Assert.AreEqual(9, repository.List().Count);
            var results = repository.ListDescendants(tree.Single(i => i.Name.Equals("Node1")));
            Assert.AreEqual(5, results.Count);
            Assert.AreEqual("Node1_1", results[0].Name);
            Assert.AreEqual("Node1_1_1", results[1].Name);
            Assert.AreEqual("Node1_1_2", results[2].Name);
            Assert.AreEqual("Node1_1_2_1", results[3].Name);
            Assert.AreEqual("Node1_2", results[4].Name);
        }

        [Test]
        public void Get_ancestors()
        {
            Assert.AreEqual(9, repository.List().Count);
            var results = repository.ListAncestors(flatList.Single(i => i.Name.Equals("Node1_1_2_1")));
            Assert.AreEqual(3, results.Count);
            Assert.AreEqual("Node1", results[0].Name);
            Assert.AreEqual("Node1_1", results[1].Name);
            Assert.AreEqual("Node1_1_2", results[2].Name);
        }

        [Test]
        public void Get_parent()
        {
            Assert.AreEqual(9, repository.List().Count);
            var node = flatList.Single(i => i.Name.Equals("Node1_1_2_1"));
            Assert.AreEqual("Node1_1_2", node.TreeInfo.Parent.Name);
            Assert.AreEqual("Node1_1", node.TreeInfo.Parent.TreeInfo.Parent.Name);
            Assert.AreEqual("Node1", node.TreeInfo.Parent.TreeInfo.Parent.TreeInfo.Parent.Name);
            Assert.IsNull(node.TreeInfo.Parent.TreeInfo.Parent.TreeInfo.Parent.TreeInfo.Parent);
        }

        [Test]
        public void Get_siblings()
        {
            Assert.AreEqual(9, repository.List().Count);

            var results = repository.ListSiblings( flatList.Single(i => i.Name.Equals("Node1_1")) );
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
    }
}