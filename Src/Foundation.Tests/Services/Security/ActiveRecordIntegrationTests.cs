using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Services.Security;
using NUnit.Framework;

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
            ActiveRecordMediator<User>.Save(new User {Name = "Test", Email = "Test@test.com"});
        }
    }
}