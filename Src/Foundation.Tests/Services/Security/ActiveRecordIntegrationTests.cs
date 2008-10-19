using Foundation.Data.ActiveRecord;
using Foundation.Services.Security;
using NUnit.Framework;
using Overclockers.Services.Data;

namespace Foundation.Tests.Services.Security
{
    [TestFixture]
    public class ActiveRecordIntegrationTests : DatabaseFixtureBase
    {
        readonly ActiveRecordIntegration arIntegration;

        public ActiveRecordIntegrationTests()
        {
            arIntegration = new ActiveRecordIntegration();
        }

        public override void RegisterTypes()
        {
            base.RegisterTypes();
            arIntegration.RegisterTypes();
        }

        [Test]
        public void Registers_types_with_ActiveRecord()
        {
            var userRepository = new UserRepository();

            userRepository.Save(new User {Name = "Test", Email = "Test@test.com"});
        }
    }
}