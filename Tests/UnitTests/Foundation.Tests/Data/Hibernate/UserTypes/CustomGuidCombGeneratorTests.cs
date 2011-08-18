using System;
using System.Collections.Generic;
using FluentNHibernate.Mapping;
using Foundation.Data.Hibernate;
using Foundation.Data.Hibernate.UserTypes;
using Foundation.Data.Security;
using Foundation.Models;
using Foundation.Models.GuidPrimaryKey;
using Foundation.TestHelpers;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using NHibernate.Engine;

namespace Foundation.Tests.Data.Hibernate.UserTypes
{
    [TestClass]
    public class CustomGuidCombGeneratorIntegrationTests : DatabaseTestBase<UnitTestHibernateDataProvider>
    {
        [TestInitialize]
        public override void Initialize()
        {
            base.Initialize();
        }

        [TestCleanup]
        public override void Cleanup()
        {
            base.Initialize();
        }

        [TestMethod]
        public void Returns_existing_id_if_it_has_been_set()
        {
            var entity = new CustomGuidCombGeneratorEntity { Name = "Test" };
            
            Assert.AreNotEqual(Guid.Empty, entity.Id);

            var id = entity.Id;

            var generator = new CustomGuidCombGenerator();

            var provider = (HibernateDataServicesProvider) Provider;

            var generatedId = generator.Generate(provider.GetCurrentSession().GetSessionImplementation(), entity);

            Assert.AreEqual(id, generatedId);
        }
    }

    public class UnitTestHibernateDataProvider : HibernateDataServicesProvider
    {
        protected override FluentNHibernate.Cfg.MappingConfiguration GetMappings(FluentNHibernate.Cfg.MappingConfiguration mappingConfiguration)
        {
            mappingConfiguration.FluentMappings.Add<CustomGuidCombGeneratorEntityMap>();
            return mappingConfiguration;
        }
    }

    public class CustomGuidCombGeneratorEntityMap : ClassMap<CustomGuidCombGeneratorEntity>
    {
        public CustomGuidCombGeneratorEntityMap()
        {
            Id(entity => entity.Id).GeneratedBy.Custom(typeof(CustomGuidCombGenerator));
            Map(entity => entity.Name);
        }
    }

    public class CustomGuidCombGeneratorEntity : INamedEntity
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="T:System.Object"/> class.
        /// </summary>
        public CustomGuidCombGeneratorEntity()
        {
            Id = Guid.NewGuid();
        }

        public virtual Guid Id { get; set; }

        public virtual string Name { get; set; }
    }
}