using Foundation.Data.Hibernate;
using Foundation.Tests.Data.Hierarchy;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using NHibernate;

namespace Foundation.Tests.Data.Hibernate
{
    [TestClass]
    public class HibernateRepositoryTests
    {
        HibernateRepository<Category> repository;
        Mock<ISessionFactory> sessionFactory;
        Mock<ISession> session;

        [TestInitialize]
        public void Initialize()
        {
            sessionFactory = new Mock<ISessionFactory>();
            session = new Mock<ISession>();

            sessionFactory.Setup(factory => factory.OpenSession()).Returns(session.Object);
            sessionFactory.Setup(factory => factory.GetCurrentSession()).Returns(session.Object);
            
            repository = new HibernateRepository<Category>(sessionFactory.Object);
        }

        [TestMethod]
        public void Create()
        {
            var category = repository.Create();
            Assert.IsNotNull(category);
        }

        [TestMethod]
        public void Save_calls_SaveOrUpdate_on_session()
        {
            var category = new Category("Test Category");
            repository.Save(category);
            session.Verify(session1 => session1.SaveOrUpdate(category));
        }

        [TestMethod]
        public void Delete()
        {
            var category = new Category("Test Category");
            repository.Delete(category);
            session.Verify(session1 => session1.Delete(category));
        }

        [TestMethod]
        public void CurrentSession()
        {
            var currentSession = repository.CurrentSession;
            Assert.AreEqual(session.Object, currentSession);
        }

        [TestMethod]
        public void List()
        {
            // TODO: How to verify this?
            repository.Query();
        }
    }
}