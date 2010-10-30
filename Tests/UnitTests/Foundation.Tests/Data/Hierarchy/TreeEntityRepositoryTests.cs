using System;
using System.Collections.Generic;
using System.Linq;
using Foundation.Data.Hierarchy;
using Foundation.Models;
using Foundation.Services.Repository;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Data.Hierarchy
{
    [TestClass]
    public class TreeEntityRepositoryTests
    {
        IList<Category> flatList;
        GenericListRepositoryGuid<Category> repository;

        [TestInitialize]
        public void Initialize()
        {
            repository = new GenericListRepositoryGuid<Category>();
            CreateTree();
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
        IList<Category> CreateTree()
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

            flatList = new List<Category> { node1, node1_1, node1_1_1, node1_1_2, node1_1_2_1, node1_2, node2, node3, node3_1 };

            flatList.ToList().ForEach(category => repository.Save(category));

            repository.RebuildTree<Category,Guid>();

            return list;
        }

        [TestMethod]
        public void Siblings()
        {
            var results = repository.Query().Siblings<Category,Guid>(flatList.Single(i => i.Name.Equals("Node1_1"))).ToList();
            Assert.AreEqual(1, results.Count);
            Assert.AreEqual("Node1_2", results[0].Name);

            results = repository.Query().Siblings<Category, Guid>(flatList.Single(i => i.Name.Equals("Node1_1")), TreeListOptions.IncludeSelf).ToList();
            Assert.AreEqual(2, results.Count);
            Assert.AreEqual("Node1_1", results[0].Name);
            Assert.AreEqual("Node1_2", results[1].Name);

            results = repository.Query().Siblings<Category, Guid>(flatList.Single(i => i.Name.Equals("Node1"))).ToList();
            Assert.AreEqual(2, results.Count);
            Assert.AreEqual("Node2", results[0].Name);
            Assert.AreEqual("Node3", results[1].Name);

            results = repository.Query().Siblings<Category, Guid>(flatList.Single(i => i.Name.Equals("Node1")), TreeListOptions.IncludeSelf).ToList();
            Assert.AreEqual(3, results.Count);
            Assert.AreEqual("Node1", results[0].Name);
            Assert.AreEqual("Node2", results[1].Name);
            Assert.AreEqual("Node3", results[2].Name);
        }

        [TestMethod]
        public void Ancestors()
        {
            var ancestors = repository.Query().Ancestors<Category, Guid>().ToList();
            Assert.AreEqual(9, ancestors.Count);
            Assert.AreEqual("Node1", ancestors[0].Name);
            Assert.AreEqual("Node1_1", ancestors[1].Name);
            Assert.AreEqual("Node1_1_1", ancestors[2].Name);
            Assert.AreEqual("Node1_1_2", ancestors[3].Name);
            Assert.AreEqual("Node1_1_2_1", ancestors[4].Name);
            Assert.AreEqual("Node1_2", ancestors[5].Name);
            Assert.AreEqual("Node2", ancestors[6].Name);
            Assert.AreEqual("Node3", ancestors[7].Name);
            Assert.AreEqual("Node3_1", ancestors[8].Name);
        }

        [TestMethod]
        public void Ancestors_for_specific_entity()
        {
            var ancestors = repository.Query().Ancestors<Category, Guid>(flatList.Single(category => category.Name.Equals("Node1_1_2_1"))).ToList();
            Assert.AreEqual(3, ancestors.Count);
            Assert.AreEqual("Node1", ancestors[0].Name);
            Assert.AreEqual("Node1_1", ancestors[1].Name);
            Assert.AreEqual("Node1_1_2", ancestors[2].Name);
        }

        [TestMethod]
        public void Children()
        {
            Assert.AreEqual(9, repository.Query().Count());
            var results = repository.Query().Children<Category, Guid>(flatList.Single(i => i.Name.Equals("Node1")));
            Assert.AreEqual(2, results.Count());
            Assert.AreEqual("Node1_1", results.First().Name);
            Assert.AreEqual("Node1_2", results.Skip(1).Single().Name);
        }

        [TestMethod]
        public void Descendants()
        {
            Assert.AreEqual(9, repository.Query().Count());
            var results = repository.Query().Descendants<Category, Guid>(flatList.Single(i => i.Name.Equals("Node1"))).ToList();
            Assert.AreEqual(5, results.Count());
            Assert.AreEqual("Node1_1", results[0].Name);
            Assert.AreEqual("Node1_1_1", results[1].Name);
            Assert.AreEqual("Node1_1_2", results[2].Name);
            Assert.AreEqual("Node1_1_2_1", results[3].Name);
            Assert.AreEqual("Node1_2", results[4].Name);
        }

        [TestMethod]
        public void Parent()
        {
            Assert.AreEqual(9, repository.Query().Count());
            var node = flatList.Single(i => i.Name.Equals("Node1_1_2_1"));
            Assert.AreEqual("Node1_1_2", node.Tree.Parent.Name);
            Assert.AreEqual("Node1_1", node.Tree.Parent.Tree.Parent.Name);
            Assert.AreEqual("Node1", node.Tree.Parent.Tree.Parent.Tree.Parent.Name);
            Assert.IsNull(node.Tree.Parent.Tree.Parent.Tree.Parent.Tree.Parent);
        }

        [TestMethod]
        public void RootNodes()
        {
            Assert.AreEqual(9, repository.Query().Count());
            var results = repository.Query().Children<Category, Guid>(null);
            Assert.AreEqual(3, results.Count());
        }
    }
}