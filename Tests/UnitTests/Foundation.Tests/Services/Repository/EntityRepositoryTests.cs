using Foundation.Services.Repository;
using Foundation.Tests.Data.Hierarchy;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services.Repository
{
    [TestClass]
    public class EntityRepositoryTests
    {
        [TestMethod]
        public void SingleOrDefault()
        {
            var repository = new GenericListRepositoryGuid<Category>();

            var category = repository.Create();

            category = repository.Save(category);

            var result = repository.SingleOrDefault(category.Id);

            Assert.IsNotNull(result);
            Assert.AreEqual(category, result);
        }
    }
}
