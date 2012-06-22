using Foundation.Data.Hibernate;
using Foundation.Tests.Data.Hibernate.UserTypes;

namespace Foundation.Tests.Data.Hibernate
{
    public class UnitTestHibernateDataProvider : HibernateDataServicesProvider
    {
        protected override FluentNHibernate.Cfg.MappingConfiguration GetMappings(FluentNHibernate.Cfg.MappingConfiguration mappingConfiguration)
        {
            mappingConfiguration.FluentMappings.Add<CustomGuidCombGeneratorEntityMap>();
            return mappingConfiguration;
        }
    }
}