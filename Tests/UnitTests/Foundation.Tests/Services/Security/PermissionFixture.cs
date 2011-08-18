using Foundation.Data.Security;
using Foundation.Services.Security;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services.Security
{
    [TestClass]
    public class PermissionFixture
    {
        [TestMethod]
        public void Can_create()
        {
            var dummyUser = new User {Email = "fake@fake.com", Name = "Dummy"};

            var permission = new Permission
                {EntityType = typeof(UserGroup), IsAllowed = true, Operation = new DeleteEntityOperation(), User = dummyUser};
        }
    }
}