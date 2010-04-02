using Foundation.Extensions;
using Foundation.TestHelpers;
using Foundation.Web.Extensions;
using Foundation.Web.TestHelpers;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Extensions
{
    [TestClass]
    public class HttpRequestBaseExtensionsTests
    {
        [TestMethod]
        public void IsAjax()
        {
            var mock = new MockContext();
            
            mock.RequestHeaders.Add("X-Requested-By", "XMLHttpRequest");

            Assert.IsTrue(mock.HttpContext.Request.IsAjax() );
        }
    }
}