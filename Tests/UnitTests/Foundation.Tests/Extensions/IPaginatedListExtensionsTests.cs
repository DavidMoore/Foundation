using Foundation.Data.ActiveRecord.Security;
using Foundation.Extensions;
using Foundation.Models;
using Foundation.Services.Security;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Extensions
{
    [TestClass]
    public class IPaginatedListExtensionsTests
    {
        [TestMethod]
        public void Cast()
        {
            var list = new PaginatedCollection<User>();
            IPaginatedCollection<INamedEntity> cast = list.CastTo<User, INamedEntity>();
        }
    }
}