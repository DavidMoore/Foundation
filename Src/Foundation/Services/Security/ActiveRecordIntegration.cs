using Castle.ActiveRecord;

namespace Foundation.Services.Security
{
    public class ActiveRecordIntegration
    {
        public void RegisterTypes()
        {
            ActiveRecordStarter.RegisterTypes( typeof(User) );
        }
    }
}