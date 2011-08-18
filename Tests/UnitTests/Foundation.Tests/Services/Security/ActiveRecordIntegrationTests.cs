using Castle.ActiveRecord;
using Foundation.Data.Security;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services.Security
{
    [TestClass]
    public class ActiveRecordIntegrationTests : DatabaseFixture
    {
        public override void RegisterTypes()
        {
            base.RegisterTypes();
            ActiveRecordIntegration.RegisterTypes();
        }

        [TestInitialize]
        public override void Setup()
        {
            base.Setup();
        }

        [TestCleanup]
        public override void Teardown()
        {
            base.Teardown();
        }

        [TestMethod]
        public void Registers_types_with_ActiveRecord()
        {
            ActiveRecordMediator<User>.Save(new User {Name = "Test", Email = "Test@test.com"});
        }
    }
}