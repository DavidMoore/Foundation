using Foundation.Data.ActiveRecord;
using Foundation.Data.Security;
using Foundation.Services.Security;

namespace Foundation.Tests
{
    public class SecurityFixtureBase : DatabaseFixtureBase
    {
        public override void RegisterTypes()
        {
            base.RegisterTypes();
            ActiveRecordIntegration.RegisterTypes();
        }
    }
}