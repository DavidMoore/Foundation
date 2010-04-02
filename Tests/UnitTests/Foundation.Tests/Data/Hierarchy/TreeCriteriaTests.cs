using System;
using System.Collections.Generic;
using System.Linq;
using Foundation.Data.Hierarchy;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Data.Hierarchy
{
    [TestClass]
    public class TreeCriteriaTests : DatabaseFixture
    {
        [TestInitialize]
        public override void Setup()
        {
            base.Setup();
            repository = new TreeActiveRecordRepository<Category>();
            CreateTree();
            Assert.AreEqual(9, flatList.Count);
        }

        TreeActiveRecordRepository<Category> repository;
        List<Category> flatList;

        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(Category));
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

        [TestMethod]
        public void AncestorOf()
        {
            var results = repository.List(TreeCriteria.AncestorOf(flatList.Single(x => x.Name == "Node1_1_2_1")));

            Assert.AreEqual(3, results.Count);
            Assert.AreEqual("Node1", results[0].Name);
            Assert.AreEqual("Node1_1", results[1].Name);
            Assert.AreEqual("Node1_1_2", results[2].Name);
        }

        [TestMethod, ExpectedException(typeof(ArgumentNullException))]
        public void AncestorOf_throws_ArgumentNullException_when_ancestor_is_null()
        {
            TreeCriteria.AncestorOf<Category>(null);
        }

        [TestMethod]
        public void ChildOf()
        {
            var results = repository.List(TreeCriteria.ChildOf(null));
            Assert.AreEqual(3, results.Count);
            Assert.AreEqual("Node1", results[0].Name);
            Assert.AreEqual("Node2", results[1].Name);
            Assert.AreEqual("Node3", results[2].Name);

            results = repository.List(TreeCriteria.ChildOf(flatList.Single(x => x.Name == "Node1")));

            Assert.AreEqual(2, results.Count);
            Assert.AreEqual("Node1_1", results[0].Name);
            Assert.AreEqual("Node1_2", results[1].Name);
        }

        [TestMethod]
        public void DescendantOf()
        {
            var results = repository.List(TreeCriteria.DescendantOf(flatList.Single(x => x.Name == "Node1")));

            Assert.AreEqual(5, results.Count);
            Assert.AreEqual("Node1_1", results[0].Name);
            Assert.AreEqual("Node1_1_1", results[1].Name);
            Assert.AreEqual("Node1_1_2", results[2].Name);
            Assert.AreEqual("Node1_1_2_1", results[3].Name);
            Assert.AreEqual("Node1_2", results[4].Name);
        }

        [TestMethod, ExpectedException(typeof(ArgumentNullException))]
        public void DescendantOf_throws_ArgumentNullException_when_descendant_is_null()
        {
            TreeCriteria.DescendantOf<Category>(null);
        }

        [TestMethod]
        public void ParentOf()
        {
            var results = repository.List(TreeCriteria.ParentOf(flatList.Single(x => x.Name == "Node1_1")));
            Assert.AreEqual(1, results.Count);
            Assert.AreEqual("Node1", results[0].Name);

            results = repository.List(TreeCriteria.ParentOf(flatList.Single(x => x.Name == "Node1_1_2_1")));
            Assert.AreEqual(1, results.Count);
            Assert.AreEqual("Node1_1_2", results[0].Name);

            results = repository.List(TreeCriteria.ParentOf(flatList.Single(x => x.Name == "Node1")));
            Assert.AreEqual(0, results.Count);
        }

        [TestMethod, ExpectedException(typeof(ArgumentNullException))]
        public void ParentOf_throws_ArgumentNullException_when_child_is_null()
        {
            TreeCriteria.ParentOf<Category>(null);
        }

        [TestMethod]
        public void SameOrDescendantOf()
        {
            var results = repository.List(TreeCriteria.SameOrDescendantOf(flatList.Single(x => x.Name == "Node1")));

            Assert.AreEqual(6, results.Count);
            Assert.AreEqual("Node1", results[0].Name);
            Assert.AreEqual("Node1_1", results[1].Name);
            Assert.AreEqual("Node1_1_1", results[2].Name);
            Assert.AreEqual("Node1_1_2", results[3].Name);
            Assert.AreEqual("Node1_1_2_1", results[4].Name);
            Assert.AreEqual("Node1_2", results[5].Name);
        }

        [TestMethod]
        public void SiblingOf()
        {
            var results = repository.List(TreeCriteria.SiblingOf(flatList.Single(x => x.Name == "Node1")));
            Assert.AreEqual(2, results.Count);
            Assert.AreEqual("Node2", results[0].Name);
            Assert.AreEqual("Node3", results[1].Name);

            results = repository.List(TreeCriteria.SiblingOf(flatList.Single(x => x.Name == "Node1_1")));
            Assert.AreEqual(1, results.Count);
            Assert.AreEqual("Node1_2", results[0].Name);

            results = repository.List(TreeCriteria.SiblingOf(flatList.Single(x => x.Name == "Node1_1"), SiblingList.IncludeSelf));
            Assert.AreEqual(2, results.Count);
            Assert.AreEqual("Node1_1", results[0].Name);
            Assert.AreEqual("Node1_2", results[1].Name);
        }
    }
}