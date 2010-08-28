using Foundation.Data.Hibernate;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using NHibernate;
using NHibernate.Context;
using NHibernate.Engine;

namespace Foundation.Tests.Data.NHibernate
{
    [TestClass]
    public class HibernateUnitOfWorkTests
    {
        [TestMethod]
        public void Constructor_opens_session_from_factory()
        {
            var session = new Mock<ISession>();
            var context = new Mock<CurrentSessionContext>();
            var sessionFactory = new Mock<ISessionFactoryImplementor>();

            sessionFactory.Setup(factory => factory.OpenSession()).Returns(session.Object);
            sessionFactory.Setup(implementor => implementor.CurrentSessionContext).Returns(context.Object);
            session.Setup(session2 => session2.SessionFactory).Returns(sessionFactory.Object);

            new HibernateUnitOfWork(sessionFactory.Object);

            sessionFactory.Verify(factory1 => factory1.OpenSession());
        }

        [TestMethod]
        public void Constructor_sets_opened_session_flush_mode_to_commit()
        {
            var session = new Mock<ISession>();
            var context = new Mock<CurrentSessionContext>();
            var sessionFactory = new Mock<ISessionFactoryImplementor>();

            sessionFactory.Setup(factory => factory.OpenSession()).Returns(session.Object);
            sessionFactory.Setup(implementor => implementor.CurrentSessionContext).Returns(context.Object);
            session.Setup(session2 => session2.SessionFactory).Returns(sessionFactory.Object);

            var flushMode = FlushMode.Auto;
            session.SetupSet(session2 => session2.FlushMode).Callback(mode => flushMode = mode);

            new HibernateUnitOfWork(sessionFactory.Object);
            
            session.VerifySet( session1 => session1.FlushMode, Times.Once());
            Assert.AreEqual(FlushMode.Commit, flushMode);
        }

        [TestMethod]
        public void Dispose_also_disposes_of_session()
        {
            var session = new Mock<ISession>();
            var context = new Mock<CurrentSessionContext>();
            var sessionFactory = new Mock<ISessionFactoryImplementor>();

            sessionFactory.Setup(factory => factory.OpenSession()).Returns(session.Object);
            session.Setup(session2 => session2.SessionFactory).Returns(sessionFactory.Object);
            sessionFactory.Setup(implementor => implementor.CurrentSessionContext).Returns(context.Object);
            
            var work = new HibernateUnitOfWork(sessionFactory.Object);

            work.Dispose();
            
            session.Verify(session1 => session1.Dispose());
        }

        [TestMethod]
        public void Commit_flushes_session()
        {
            var session = new Mock<ISession>();
            var context = new Mock<CurrentSessionContext>();
            var sessionFactory = new Mock<ISessionFactory>().As<ISessionFactoryImplementor>();

            session.Setup(session2 => session2.SessionFactory).Returns(sessionFactory.Object);

            sessionFactory.Setup(factory => factory.OpenSession()).Returns(session.Object);
            sessionFactory.Setup(implementor => implementor.CurrentSessionContext).Returns(context.Object);

            var work = new HibernateUnitOfWork(sessionFactory.Object);

            work.Commit();

            session.Verify(session1 => session1.Flush());
        }
    }
}