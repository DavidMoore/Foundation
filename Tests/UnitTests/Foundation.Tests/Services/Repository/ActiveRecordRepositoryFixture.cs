using System;
using System.Linq;
using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Data.Security;
using Foundation.Services.Validation;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services.Repository
{
    [TestClass]
    public class ActiveRecordRepositoryFixture : SecurityFixtureBase
    {

        [TestInitialize]
        public override void Setup()
        {
            base.Setup();
            repository = new ActiveRecordRepository<User>();
        }

        ActiveRecordRepository<User> repository;

        [TestMethod]
        public void Can_execute_SQL()
        {
            using (var transaction = new TransactionScope())
            {
                var user = repository.Save(new User {Email = "user1@usertest.com", Name = "User1"});
                transaction.Flush();
                
                repository.ExecuteSql(string.Format("UPDATE User SET Email=\"user1updated@usertest.com\"", user.Id));
                transaction.Flush();

                repository.Refresh(user);
                Assert.AreEqual("user1updated@usertest.com", user.Email);
            }
        }

        [TestMethod]
        public void Create()
        {
            Assert.IsNotNull(repository.Create());
        }

        [TestMethod]
        public void DeleteAll()
        {
            repository.Save(
                new User {Email = "user1@test.com", Name = "TestUser1"},
                new User {Email = "user2@test.com", Name = "TestUser2"}
                );
            Assert.IsTrue(repository.Query().Count() > 1);
            repository.DeleteAll();
            Assert.IsTrue(repository.Query().Count() == 0);
        }

        [TestMethod]
        public void Find_by_id()
        {
            var user = new User {Email = "test@test.com", Name = "TestUser1"};

            repository.Save(user);

            Assert.AreNotEqual(Guid.Empty, user.Id);

            var user2 = repository.Query().SingleOrDefault(x => x.Id.Equals(user.Id));

            Assert.AreEqual(user2, user);
        }

        [TestMethod]
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

        [TestMethod]
        public void Save()
        {
            var user = repository.Create();
            user.Name = "Joe";
            user.Email = "joe@bloggs.com";
            var user2 = repository.Save(user);
            Assert.AreNotEqual(Guid.Empty, user.Id);
            Assert.AreEqual(user2.Id, user.Id);
            Assert.IsTrue(repository.Query().Count() == 1);
        }

        [TestMethod, ExpectedException(typeof(ModelValidationException))]
        public void Uses_ActiveRecordModelValidator_by_default()
        {
            var user = new User {Name = null};
            repository.Save(user);
        }
    }
}