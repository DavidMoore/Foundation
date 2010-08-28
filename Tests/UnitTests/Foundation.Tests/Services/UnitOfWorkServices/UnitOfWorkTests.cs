using System;
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
    }

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
            Assert.IsNull(UnitOfWorkFactory.GetFactory());
        }

        [TestMethod]
        public void SetFactory_sets_the_current_factory()
        {
            Assert.IsNull(UnitOfWorkFactory.GetFactory());
            var factory = new Mock<IUnitOfWorkFactory>();
            UnitOfWorkFactory.SetFactory(factory.Object);
            Assert.AreEqual(factory.Object, UnitOfWorkFactory.GetFactory());
        }

        [TestMethod, ExpectedException(typeof(InvalidOperationException))]
        public void SetFactory_throws_InvalidOperationException_if_called_more_than_once()
        {
            UnitOfWorkFactory.SetFactory(new Mock<IUnitOfWorkFactory>().Object);
            UnitOfWorkFactory.SetFactory(new Mock<IUnitOfWorkFactory>().Object);
        }
    }

    public static class UnitOfWorkFactory
    {
        static IUnitOfWorkFactory factory;

        static UnitOfWorkFactory()
        {
            factory = null;
        }

        public static IUnitOfWorkFactory GetFactory()
        {
            return factory;
        }

        public static void SetFactory(IUnitOfWorkFactory unitOfWorkFactory)
        {
            if( factory != null) throw new InvalidOperationException("Unit of Work factory has already been configured.");
            factory = unitOfWorkFactory;
        }

        internal static void Reset()
        {
            factory = null;
        }
    }
    
    public interface IUnitOfWorkFactory
    {
        /// <summary>
        /// Starts and returns a new unit of work.
        /// </summary>
        /// <returns></returns>
        IUnitOfWork Start();
    }

    public class UnitOfWork : IUnitOfWork
    {
        readonly IUnitOfWork implementation;

        /// <summary>
        /// Initializes a new instance of the <see cref="UnitOfWork"/> class.
        /// </summary>
        public UnitOfWork()
        {
            var factory = UnitOfWorkFactory.GetFactory();
            if(factory == null) throw new InvalidOperationException("There is no UnitOfWorkFactory configured. Set it by calling UnitOfWorkFactory.SetFactory()");
            
            implementation = factory.Start();
            if( implementation == null) throw new InvalidOperationException("The unit of work factory returned a null unit of work.");
        }

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        /// <filterpriority>2</filterpriority>
        public void Dispose()
        {
            Dispose(true);
        }

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources
        /// </summary>
        /// <param name="disposing"><c>true</c> to release both managed and unmanaged resources; <c>false</c> to release only unmanaged resources.</param>
        void Dispose(bool disposing)
        {
            if( disposing && implementation != null) implementation.Dispose();
        }
    }

    public interface IUnitOfWork : IDisposable {}
}
