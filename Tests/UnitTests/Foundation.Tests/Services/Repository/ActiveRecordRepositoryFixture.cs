using Foundation.Extensions;
using Foundation.Models;
using Foundation.Services.Repository;
using Foundation.Services.Security;
using Foundation.Services.Validation;
using NUnit.Framework;

namespace Foundation.Tests.Services.Repository
{
    [TestFixture]
    public class ActiveRecordRepositoryFixture : SecurityFixtureBase
    {
        #region Setup/Teardown

        public override void Setup()
        {
            base.Setup();
            repository = new ActiveRecordRepository<User>();
        }

        #endregion

        ActiveRecordRepository<User> repository;

        [Test]
        public void Can_execute_SQL()
        {
            var user = repository.Save(new User {Email = "user1@usertest.com", Name = "User1"});
            repository.ExecuteSql(string.Format("UPDATE User SET Email=\"user1updated@usertest.com\" WHERE Id={0}", user.Id));
            repository.Refresh(user);
            Assert.AreEqual("user1updated@usertest.com", user.Email);
        }

        [Test]
        public void Create()
        {
            Assert.IsNotNull(repository.Create());
        }

        [Test]
        public void DeleteAll()
        {
            repository.Save(
                new User {Email = "user1@test.com", Name = "TestUser1"},
                new User {Email = "user2@test.com", Name = "TestUser2"}
                );
            Assert.IsTrue(repository.List().Count > 1);
            repository.DeleteAll();
            Assert.IsTrue(repository.List().Count == 0);
        }

        [Test]
        public void Find_by_id()
        {
            var user = new User {Email = "test@test.com", Name = "TestUser1"};

            repository.Save(user);

            Assert.AreEqual(1, user.Id);

            var user2 = repository.Find(1);

            Assert.AreEqual(user2, user);
        }

        [Test]
        public void PagedList()
        {
            var user1 = new User {Email = "user1@usertest.com", Name = "User1"};
            var user2 = new User {Email = "user2@usertest.com", Name = "User2"};
            var user3 = new User {Email = "user3@usertest.com", Name = "User3"};
            var user4 = new User {Email = "user4@usertest.com", Name = "User4"};
            var user5 = new User {Email = "user5@usertest.com", Name = "User5"};

            repository.Save(user1, user2, user3, user4, user5);

            var page = repository.PagedList(1, 3);

            Assert.AreEqual(3, page.Count);
            Assert.IsTrue(page.Contains(user1));
            Assert.IsTrue(page.Contains(user2));
            Assert.IsTrue(page.Contains(user3));

            page = repository.PagedList(2, 3);

            Assert.AreEqual(2, page.Count);
            Assert.IsTrue(page.Contains(user4));
            Assert.IsTrue(page.Contains(user5));
        }

        [Test]
        public void Save()
        {
            var user = repository.Create();
            user.Name = "Joe";
            user.Email = "joe@bloggs.com";
            var user2 = repository.Save(user);
            Assert.IsFalse(user.Id == 0);
            Assert.AreEqual(user2.Id, user.Id);
            Assert.IsTrue(repository.List().Count == 1);
        }

        [Test, ExpectedException(typeof(ModelValidationException))]
        public void Uses_ActiveRecordModelValidator_by_default()
        {
            var user = new User {Name = null};
            repository.Save(user);
        }
    }
}