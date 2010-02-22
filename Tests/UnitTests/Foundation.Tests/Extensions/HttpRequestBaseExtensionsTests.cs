using Foundation.Extensions;
using Foundation.TestHelpers;
using Foundation.Web.Extensions;
using Foundation.Web.TestHelpers;
using NUnit.Framework;

namespace Foundation.Tests.Extensions
{
    [TestFixture]
    public class HttpRequestBaseExtensionsTests
    {
        [Test]
        public void IsAjax()
        {
            var mock = new MockContext();
            
            mock.RequestHeaders.Add("X-Requested-By", "XMLHttpRequest");

            Assert.IsTrue(mock.HttpContext.Request.IsAjax() );
        }
    }
}