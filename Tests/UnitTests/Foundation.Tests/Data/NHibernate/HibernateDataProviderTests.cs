using Foundation.Data.Hibernate;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using NHibernate;

namespace Foundation.Tests.Data.NHibernate
{
    [TestClass]
    public class HibernateDataProviderTests
    {
        [TestMethod]
        public void GetUnitOfWorkFactory_returns_factory()
        {
            var factory = new Mock<ISessionFactory>();
            var provider = new HibernateDataProvider(factory.Object);
            Assert.IsNotNull(provider.GetUnitOfWorkFactory());
        }

        [TestMethod]
        public void GetUnitOfWorkFactory_uses_same_session_factory_as_provider()
        {
            var factory = new Mock<ISessionFactory>();
            var provider = new HibernateDataProvider(factory.Object);
            var unitOfWorkFactory = (HibernateUnitOfWorkFactory)provider.GetUnitOfWorkFactory();
            Assert.AreEqual(factory.Object, unitOfWorkFactory.SessionFactory);
        }

        [TestMethod]
        public void Initialize_does_not_do_anything_if_session_factory_was_already_passed_in_constructor()
        {
            var sessionFactory = new Mock<ISessionFactory>();
            var provider = new HibernateDataProvider(sessionFactory.Object);
            provider.Initialize();
        }

        [TestMethod, ExpectedException(typeof(HibernateDataProviderException))]
        public void GetUnitOfWorkFactory_throws_HibernateDataProviderException_if_session_factory_not_set()
        {
            var provider = new HibernateDataProvider();
            provider.GetUnitOfWorkFactory();
        }
    }
}