using Castle.ActiveRecord;

namespace Foundation.Data.ActiveRecord.Security
{
    /// <summary>
    /// Methods for integrating the Security model and features with ActiveRecord
    /// </summary>
    public static class ActiveRecordIntegration
    {
        public static void RegisterTypes()
        {
            ActiveRecordStarter.RegisterTypes(
                typeof(EntityOperation),
                typeof(EntityType),
                typeof(User),
                typeof(UserGroup),
                typeof(Permission)
                );
        }
    }
}