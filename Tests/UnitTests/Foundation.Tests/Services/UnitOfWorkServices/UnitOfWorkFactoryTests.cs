using System;
using Foundation.Services.UnitOfWorkServices;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace Foundation.Tests.Services.UnitOfWorkServices
{
    [TestClass]
    public class UnitOfWorkFactoryTests
    {
        [TestInitialize]
        public void Initialize()
        {
            UnitOfWorkFactory.Reset();
        }

        [TestMethod]
        public void Default_factory_is_null()
        {
            Assert.IsNull(UnitOfWorkFactory.Factory);
        }

        [TestMethod]
        public void SetFactory_sets_the_current_factory()
        {
            Assert.IsNull(UnitOfWorkFactory.Factory);
            var factory = new Mock<IUnitOfWorkFactory>();
            UnitOfWorkFactory.SetFactory(factory.Object);
            Assert.AreEqual(factory.Object, UnitOfWorkFactory.Factory);
        }

        [TestMethod, ExpectedException(typeof(InvalidOperationException))]
        public void SetFactory_throws_InvalidOperationException_if_called_more_than_once()
        {
            UnitOfWorkFactory.SetFactory(new Mock<IUnitOfWorkFactory>().Object);
            UnitOfWorkFactory.SetFactory(new Mock<IUnitOfWorkFactory>().Object);
        }
    }
}