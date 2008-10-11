using Foundation.Services.Repository;
using Foundation.Services.Security;
using NUnit.Framework;

namespace Foundation.Tests.Services.Repository
{
    [TestFixture]
    public class ActiveRecordRepositoryFixture : SecurityFixtureBase
    {
        private readonly ActiveRecordRepository<User> activeRecordRepository = new ActiveRecordRepository<User>();

        [Test]
        public void Can_execute_SQL()
        {
            User user = activeRecordRepository.Save(new User {Email = "user1@usertest.com", Name = "User1"});
            activeRecordRepository.ExecuteSql(string.Format("UPDATE User SET Email=\"user1updated@usertest.com\" WHERE Id={0}", user.Id));
            activeRecordRepository.Refresh(user);
            Assert.AreEqual("user1updated@usertest.com", user.Email);
        }

        [Test]
        public void Create()
        {
            Assert.IsNotNull(activeRecordRepository.Create());
        }

        [Test]
        public void DeleteAll()
        {
            activeRecordRepository.Save(
                new User {Email = "user1@test.com", Name = "TestUser1"},
                new User {Email = "user2@test.com", Name = "TestUser2"}
                );
            Assert.IsTrue(activeRecordRepository.List().Count > 1);
            activeRecordRepository.DeleteAll();
            Assert.IsTrue(activeRecordRepository.List().Count == 0);
        }

        [Test]
        public void Save()
        {
            activeRecordRepository.DeleteAll();
            Assert.IsTrue(activeRecordRepository.List().Count == 0);
            User user = activeRecordRepository.Create();
            user.Name = "Joe";
            user.Email = "joe@bloggs.com";
            User user2 = activeRecordRepository.Save(user);
            Assert.IsFalse(user.Id == 0);
            Assert.AreEqual(user2.Id, user.Id);
            Assert.IsTrue(activeRecordRepository.List().Count == 1);
        }
    }
}