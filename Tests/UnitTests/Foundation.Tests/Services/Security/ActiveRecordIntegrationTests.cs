using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Data.ActiveRecord.Security;
using Foundation.Services.Security;
using NUnit.Framework;

namespace Foundation.Tests.Services.Security
{
    [TestFixture]
    public class ActiveRecordIntegrationTests : DatabaseFixtureBase
    {
        public override void RegisterTypes()
        {
            base.RegisterTypes();
            ActiveRecordIntegration.RegisterTypes();
        }

        [Test]
        public void Registers_types_with_ActiveRecord()
        {
            ActiveRecordMediator<User>.Save(new User {Name = "Test", Email = "Test@test.com"});
        }
    }
}