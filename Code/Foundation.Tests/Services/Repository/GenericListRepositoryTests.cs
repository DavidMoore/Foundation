using Foundation.Models;
using Foundation.Services.Repository;
using NUnit.Framework;

namespace Foundation.Tests.Services.Repository
{
    [TestFixture]
    public class GenericListRepositoryTests
    {
        [SetUp]
        public void Setup()
        {
            repository = new GenericListRepository<DummyClass>();
        }

        GenericListRepository<DummyClass> repository;

        [Test]
        public void Can_get_by_id()
        {
            var instance = repository.Create();
            instance.Title = "Test";
            repository.Save(instance);
            Assert.AreEqual(instance, repository.Find(1));
        }

        [Test]
        public void Delete()
        {
            var test1 = new DummyClass {Title = "test1"};
            var test2 = new DummyClass { Title = "test2" };

            repository.Save(test1, test2);

            Assert.AreEqual(2, repository.List().Count);

            repository.Delete(test1);

            Assert.AreEqual(1, repository.List().Count);

            Assert.AreEqual(test2, repository.List()[0]);
        }

        [Test]
        public void Can_get_new_instance_with_Create()
        {
            var instance = repository.Create();
            Assert.IsNotNull(instance);
        }

        [Test]
        public void Can_save()
        {
            var instance = repository.Create();
            instance.Title = "My Test";
            repository.Save(instance);
            Assert.AreEqual(1, instance.Id);
        }
    }

    public class DummyClass : IEntity
    {
        public string Title { get; set; }

        #region IEntity Members

        public int Id { get; set; }

        #endregion
    }
}