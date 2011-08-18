using Foundation.Data.Security;
using Foundation.Services.Security;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services.Security
{
    [TestClass]
    public class EntityTypeFixture : SecurityFixtureBase
    {
        [TestMethod]
        public void Can_create_by_concrete_Type()
        {
            var userType = typeof(User);
            var entityType = new EntityType(userType);

            Assert.AreEqual(entityType.TypeName, userType.AssemblyQualifiedName);
            Assert.AreEqual(entityType.Type, userType);
        }

        [TestMethod]
        public void Can_create_by_Type_name()
        {
            var userType = typeof(User);
            var entityType = new EntityType(userType.AssemblyQualifiedName);

            Assert.AreEqual(entityType.TypeName, userType.AssemblyQualifiedName);
            Assert.AreEqual(entityType.Type, userType);
        }
    }
}