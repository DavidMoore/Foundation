using Moq;
using Foundation.TestHelpers;
using NUnit.Framework;

namespace Foundation.Tests.TestHelpers
{
    [TestFixture]
    public class MvcTestHelpersTests
    {
        [Test]
        public void Can_get_mocked_HttpContextBase()
        {
            var httpContextBase = MvcTestHelpers.GetHttpContextBase();
            Assert.IsNotNull(httpContextBase);
        }

        public void Can_access_request_object()
        {
            var httpContextBase = MvcTestHelpers.GetHttpContextBase();
            
        }
    }
}
