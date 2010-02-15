using Foundation.Services.Security;
using NUnit.Framework;

namespace Foundation.Tests.Services.Security
{
    [TestFixture]
    public class EntityTypeFixture : SecurityFixtureBase
    {
        [Test]
        public void Can_create_by_concrete_Type()
        {
            var userType = typeof(User);
            var entityType = new EntityType(userType);

            Assert.AreEqual(entityType.TypeName, userType.AssemblyQualifiedName);
            Assert.AreEqual(entityType.Type, userType);
        }

        [Test]
        public void Can_create_by_Type_name()
        {
            var userType = typeof(User);
            var entityType = new EntityType(userType.AssemblyQualifiedName);

            Assert.AreEqual(entityType.TypeName, userType.AssemblyQualifiedName);
            Assert.AreEqual(entityType.Type, userType);
        }
    }
}