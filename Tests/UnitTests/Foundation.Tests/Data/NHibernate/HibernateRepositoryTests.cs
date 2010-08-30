using System;
using System.Linq;
using Foundation.Services.Repository;
using Foundation.Tests.Data.Hierarchy;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using NHibernate;
using NHibernate.Linq;

namespace Foundation.Tests.Data.NHibernate
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
        public void Save()
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
            repository.Query();
            // TODO: How to verify this?
        }
    }

    /// <summary>
    /// Repository for NHibernate.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class HibernateRepository<T> : IRepository<T> where T : class, new()
    {
        readonly ISessionFactory factory;

        /// <summary>
        /// Initializes a new instance of the <see cref="HibernateRepository&lt;T&gt;"/> class.
        /// </summary>
        /// <param name="factory">The session factory.</param>
        public HibernateRepository(ISessionFactory factory)
        {
            this.factory = factory;
        }

        /// <summary>
        /// Creates and returns a new instance of the model.
        /// </summary>
        /// <returns>A new instance.</returns>
        public T Create()
        {
            return new T();
        }

        /// <summary>
        /// Saves the specified instance.
        /// </summary>
        /// <param name="instance">The instance.</param>
        /// <returns></returns>
        public T Save(T instance)
        {
            CurrentSession.SaveOrUpdate(instance);
            return instance;
        }

        /// <summary>
        /// Deletes all instances from the database. You can modify this
        /// query to limit the instances deleted (for example, just a single instance).
        /// </summary>
        public IQueryable<T> Delete()
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Deletes the instance from the database.
        /// </summary>
        /// <param name="instance">The object to remove from the database.</param>
        public void Delete(T instance)
        {
            CurrentSession.Delete(instance);
        }

        /// <summary>
        /// Returns a queryable list of all the instances of the model.
        /// </summary>
        /// <returns></returns>
        public IQueryable<T> Query()
        {
            return CurrentSession.Linq<T>();
        }

        /// <summary>
        /// Gets the current session.
        /// </summary>
        /// <value>The current session.</value>
        internal ISession CurrentSession
        {
            get
            {
                return factory.GetCurrentSession();
            }
        }
    }
}