using System;
using System.Collections.Generic;

using Foundation.Data.Hibernate;
using Foundation.Data.Hibernate.UserTypes;
using Foundation.Data.Security;
using Foundation.Models;
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
}