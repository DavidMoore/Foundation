using Foundation.Data.ActiveRecord;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests
{
    [TestClass]
    public class DatabaseFixture : DatabaseFixtureBase
    {
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
    }
}
