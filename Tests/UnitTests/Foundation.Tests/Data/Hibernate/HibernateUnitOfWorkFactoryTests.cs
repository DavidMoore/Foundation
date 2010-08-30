using System;
using Foundation.Data.Hibernate;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Data.Hibernate
{
    [TestClass]
    public class HibernateUnitOfWorkFactoryTests
    {
        [TestMethod, ExpectedException(typeof(ArgumentNullException))]
        public void ArgumentNullException_if_passed_factory_is_null()
        {
            new HibernateUnitOfWorkFactory(null);
        }
    }
}
