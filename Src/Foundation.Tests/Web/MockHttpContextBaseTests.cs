using System.Web;
using Foundation.TestHelpers;
using NUnit.Framework;
using Rhino.Mocks;

namespace Foundation.Tests.Web
{
    [TestFixture]
    public class MockHttpContextBaseTests
    {
        #region Setup/Teardown

        [SetUp]
        public void SetUp()
        {
            mocks = new MockRepository();
        }

        #endregion

        MockRepository mocks;

        [Test]
        public void Can_get_non_null_HttpContextBase()
        {
            HttpContextBase context = mocks.DynamicHttpContextBase();
            Assert.IsNotNull(context);
            Assert.IsNotNull(context.Request);
            Assert.IsNotNull(context.Response);
        }
    }
}