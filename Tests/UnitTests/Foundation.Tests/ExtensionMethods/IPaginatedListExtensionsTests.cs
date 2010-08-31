using System;
using Foundation.Data.ActiveRecord.Security;
using Foundation.ExtensionMethods;
using Foundation.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.ExtensionMethods
{
    [TestClass]
    public class IPaginatedListExtensionsTests
    {
        [TestMethod]
        public void Cast()
        {
            var list = new PaginatedCollection<User>();
            IPaginatedCollection<INamedEntity<Guid>> cast = list.CastTo<User, INamedEntity<Guid>>();
        }
    }
}