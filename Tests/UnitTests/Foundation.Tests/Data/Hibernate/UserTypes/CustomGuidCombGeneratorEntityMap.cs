using FluentNHibernate.Mapping;

using Foundation.Data.Hibernate.UserTypes;

namespace Foundation.Tests.Data.Hibernate.UserTypes
{
    public class CustomGuidCombGeneratorEntityMap : ClassMap<CustomGuidCombGeneratorEntity>
    {
        public CustomGuidCombGeneratorEntityMap()
        {
            Id(entity => entity.Id).GeneratedBy.Custom(typeof(CustomGuidCombGenerator));
            Map(entity => entity.Name);
        }
    }
}