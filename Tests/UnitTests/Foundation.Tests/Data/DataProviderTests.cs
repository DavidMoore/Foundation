using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Foundation.Services.UnitOfWorkServices;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace Foundation.Tests.Data
{
    [TestClass]
    public class DataProviderTests
    {
        [TestMethod]
        public void TestMethod1()
        {
            var provider = new Mock<IDataProvider>();
            
        }
    }

    /// <summary>
    /// A type implementing this interface is reponsible for doing
    /// work to initialize the data layer, and do any required
    /// clean-up when disposed. It should also provide
    /// a <see cref="IUnitOfWorkFactory"/> for Unit of Work services.
    /// </summary>
    public interface IDataProvider : ICanInitialize, IDisposable
    {
        /// <summary>
        /// Gets the unit of work factory for this provider.
        /// </summary>
        /// <returns></returns>
        IUnitOfWorkFactory GetUnitOfWorkFactory();
    }

    /// <summary>
    /// Marks a type that should be initialized after
    /// construction by calling <see cref="Initialize"/>.
    /// </summary>
    public interface ICanInitialize
    {
        /// <summary>
        /// Initializes this instance.
        /// </summary>
        void Initialize();
    }
}
