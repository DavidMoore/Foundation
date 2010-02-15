using Foundation.Services.Security;
using NUnit.Framework;

namespace Foundation.Tests.Services.Security
{
    [TestFixture]
    public class PermissionFixture
    {
        [Test]
        public void Can_create()
        {
            var dummyUser = new User {Email = "fake@fake.com", Name = "Dummy"};

            var permission = new Permission
                {EntityType = typeof(UserGroup), IsAllowed = true, Operation = new DeleteEntityOperation(), User = dummyUser};
        }
    }
}