using Foundation.Data.ActiveRecord.Security;
using Foundation.Extensions;
using Foundation.Models;
using Foundation.Services.Security;
using NUnit.Framework;

namespace Foundation.Tests.Extensions
{
    [TestFixture]
    public class IPaginatedListExtensionsTests
    {
        [Test]
        public void Cast()
        {
            var list = new PaginatedCollection<User>();
            IPaginatedCollection<IEntityWithUniqueName> cast = list.CastTo<User, IEntityWithUniqueName>();
        }
    }
}