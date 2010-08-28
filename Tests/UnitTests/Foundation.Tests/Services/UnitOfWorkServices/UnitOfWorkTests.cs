using System;
using Foundation.Services.UnitOfWorkServices;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace Foundation.Tests.Services.UnitOfWorkServices
{
    [TestClass]
    public class UnitOfWorkTests
    {
        [TestInitialize]
        public void Initialize()
        {
            UnitOfWorkFactory.Reset();
        }
        
        [TestMethod]
        public void Constructor_gets_factory_and_calls_Start_to_get_implementation()
        {
            var factory = new Mock<IUnitOfWorkFactory>();
            UnitOfWorkFactory.SetFactory(factory.Object);

            var work = new Mock<IUnitOfWork>();
            factory.Setup(workFactory => workFactory.Start()).Returns(work.Object);

            using (new UnitOfWork())
            {
                factory.Verify(workFactory => workFactory.Start());
            }
        }

        [TestMethod, ExpectedException(typeof(InvalidOperationException))]
        public void Constructor_throws_exception_if_factory_not_configured()
        {
            using (new UnitOfWork()) {}
        }

        [TestMethod, ExpectedException(typeof(InvalidOperationException))]
        public void Constructor_throws_exception_if_factory_returns_null_implementation()
        {
            var factory = new Mock<IUnitOfWorkFactory>();
            factory.Setup(workFactory => workFactory.Start()).Returns((IUnitOfWork)null);
            UnitOfWorkFactory.SetFactory(factory.Object);
            using (new UnitOfWork()) { }
        }

        [TestMethod]
        public void Dipose_also_disposes_of_implementation()
        {
            var work = new Mock<IUnitOfWork>();
            var factory = new Mock<IUnitOfWorkFactory>();
            factory.Setup(workFactory => workFactory.Start()).Returns(work.Object);

            UnitOfWorkFactory.SetFactory(factory.Object);

            var unit = new UnitOfWork();
            unit.Dispose();

            work.Verify(mock => mock.Dispose());
        }

        [TestMethod]
        public void Rollback_calls_implementation()
        {
            var work = new Mock<IUnitOfWork>();
            var factory = new Mock<IUnitOfWorkFactory>();
            factory.Setup(workFactory => workFactory.Start()).Returns(work.Object);

            UnitOfWorkFactory.SetFactory(factory.Object);

            using (var unit = new UnitOfWork())
            {
                unit.Rollback();
            }
            
            work.Verify(mock => mock.Rollback());
        }

        [TestMethod]
        public void Commit_calls_implementation()
        {
            var work = new Mock<IUnitOfWork>();
            var factory = new Mock<IUnitOfWorkFactory>();
            factory.Setup(workFactory => workFactory.Start()).Returns(work.Object);

            UnitOfWorkFactory.SetFactory(factory.Object);

            using (var unit = new UnitOfWork())
            {
                unit.Commit();
            }

            work.Verify(mock => mock.Commit());
        }
    }
}