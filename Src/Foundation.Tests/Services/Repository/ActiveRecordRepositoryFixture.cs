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
            activeRecordRepository = new ActiveRecordRepository<User>();
        }

        #endregion

        ActiveRecordRepository<User> activeRecordRepository;

        [Test]
        public void Can_execute_SQL()
        {
            var user = activeRecordRepository.Save(new User {Email = "user1@usertest.com", Name = "User1"});
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
        public void Find_by_id()
        {
            var user = new User {Email = "test@test.com", Name = "TestUser1"};

            activeRecordRepository.Save(user);

            Assert.AreEqual(1, user.Id);

            var user2 = activeRecordRepository.Find(1);

            Assert.AreEqual(user2, user);
        }

        [Test]
        public void Save()
        {
            var user = activeRecordRepository.Create();
            user.Name = "Joe";
            user.Email = "joe@bloggs.com";
            var user2 = activeRecordRepository.Save(user);
            Assert.IsFalse(user.Id == 0);
            Assert.AreEqual(user2.Id, user.Id);
            Assert.IsTrue(activeRecordRepository.List().Count == 1);
        }

        [Test, ExpectedException(typeof(ModelValidationException))]
        public void Uses_ActiveRecordModelValidator_by_default()
        {
            var user = new User {Name = null};
            activeRecordRepository.Save(user);
        }
    }
}