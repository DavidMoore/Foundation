using Foundation.TestHelpers;
using Foundation.Web.TestHelpers;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.TestHelpers
{
    [TestClass]
    public class MvcTestHelpersTests
    {
        public void Can_access_request_object()
        {
            var httpContextBase = MvcTestHelpers.GetHttpContextBase();
        }

        [TestMethod]
        public void Can_get_mocked_HttpContextBase()
        {
            var httpContextBase = MvcTestHelpers.GetHttpContextBase();
            Assert.IsNotNull(httpContextBase);
        }
    }
}