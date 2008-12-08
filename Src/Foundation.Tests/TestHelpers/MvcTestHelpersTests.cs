using System.Web;
using Foundation.TestHelpers;
using NUnit.Framework;

namespace Foundation.Tests.TestHelpers
{
    [TestFixture]
    public class MvcTestHelpersTests
    {
        public void Can_access_request_object()
        {
            HttpContextBase httpContextBase = MvcTestHelpers.GetHttpContextBase();
        }

        [Test]
        public void Can_get_mocked_HttpContextBase()
        {
            HttpContextBase httpContextBase = MvcTestHelpers.GetHttpContextBase();
            Assert.IsNotNull(httpContextBase);
        }
    }
}