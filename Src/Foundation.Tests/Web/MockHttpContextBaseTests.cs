using Foundation.TestHelpers;
using NUnit.Framework;
using Rhino.Mocks;

namespace Foundation.Tests.Web
{
    [TestFixture]
    public class MockHttpContextBaseTests
    {
        private MockRepository mocks;

        [SetUp]
        public void SetUp()
        {
            mocks = new MockRepository();
        }

        [Test]
        public void Can_get_non_null_HttpContextBase()
        {
            var context = mocks.DynamicHttpContextBase();
            Assert.IsNotNull(context);
            Assert.IsNotNull(context.Request);
            Assert.IsNotNull(context.Response);
        }
    }
}
