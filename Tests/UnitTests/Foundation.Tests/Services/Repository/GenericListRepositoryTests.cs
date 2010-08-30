using System.Linq;
using Foundation.Models;
using Foundation.Services.Repository;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services.Repository
{
    [TestClass]
    public class GenericListRepositoryTests
    {
        [TestInitialize]
        public void Setup()
        {
            repository = new GenericListRepositoryInt<DummyClass>();
        }

        GenericListRepositoryInt<DummyClass> repository;

        [TestMethod]
        public void Can_get_by_id()
        {
            var instance = repository.Create();
            instance.Title = "Test";
            repository.Save(instance);
            Assert.AreEqual(instance, repository.Query().SingleOrDefault(@class => @class.Id.Equals(1)));
        }

        [TestMethod]
        public void Delete()
        {
            var test1 = new DummyClass {Title = "test1"};
            var test2 = new DummyClass { Title = "test2" };

            repository.Save(test1, test2);

            Assert.AreEqual(2, repository.Query().Count());

            repository.Delete(test1);

            Assert.AreEqual(1, repository.Query().Count());

            Assert.AreEqual(test2, repository.Query().First());
        }

        [TestMethod]
        public void Can_get_new_instance_with_Create()
        {
            var instance = repository.Create();
            Assert.IsNotNull(instance);
        }

        [TestMethod]
        public void Can_save()
        {
            var instance = repository.Create();
            instance.Title = "My Test";
            repository.Save(instance);
            Assert.AreEqual(1, instance.Id);
        }
    }

    public class DummyClass : IEntity<int>
    {
        public string Title { get; set; }

        public int Id { get; set; }
    }
}