using Foundation.Services.Repository;
using Foundation.Services.Security;
using NUnit.Framework;

namespace Foundation.Tests.Services.Repository
{
    [TestFixture]
    public class GenericListRepositoryTests
    {
        #region Setup/Teardown

        [SetUp]
        public void Setup()
        {
            repository = new GenericListRepository<DummyClass>();
        }

        #endregion

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