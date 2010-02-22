using System;
using System.Diagnostics.CodeAnalysis;
using System.Web;
using Moq;

namespace Foundation.Web.TestHelpers
{
    [SuppressMessage("Microsoft.Naming", "CA1704:IdentifiersShouldBeSpelledCorrectly", MessageId = "Mvc")]
    public static class MvcTestHelpers
    {
        public static HttpContextBase GetHttpContextBase(string url)
        {
            return GetHttpContextBase(new Uri(url));
        }

        public static HttpContextBase GetHttpContextBase(Uri url)
        {
            var args = new MockHttpContextArguments
                           {
                               HttpMethod = HttpVerb.Get,
                               RequestPath = url.AbsolutePath
                           };

            return GetHttpContextBase(args);
        }

        public static HttpContextBase GetHttpContextBase()
        {
            return GetHttpContextBase(new MockHttpContextArguments());
        }

        public static HttpContextBase GetHttpContextBase(MockHttpContextArguments args)
        {
            var mockContext = new Mock<HttpContextBase>();

            // Mock the HttpRequest
            var mockRequest = GetHttpRequestBase(args);
            mockContext.Setup(o => o.Request).Returns(mockRequest);

            // Mock the Session
            mockContext.Setup(o => o.Session).Returns((HttpSessionStateBase)null);

            // Mock the HttpResponse
            var mockResponse = GetHttpResponseBase(args);
            mockContext.Setup(o => o.Response).Returns(mockResponse);

            return mockContext.Object;
        }

        public static HttpResponseBase GetHttpResponseBase(MockHttpContextArguments args)
        {
            var mockResponse = new Mock<HttpResponseBase>();
            return mockResponse.Object;
        }

        public static HttpRequestBase GetHttpRequestBase(MockHttpContextArguments args)
        {
            var request = new Mock<HttpRequestBase>();

            var uri = new Uri("http://localhost");

            if (!string.IsNullOrEmpty(args.ApplicationPath)) request.Setup(o => o.ApplicationPath).Returns(args.ApplicationPath);
            if (!string.IsNullOrEmpty(args.RequestPath)) request.Setup(o => o.AppRelativeCurrentExecutionFilePath).Returns(args.RequestPath);
            if (!string.IsNullOrEmpty(args.HttpMethod)) request.Setup(o => o.HttpMethod).Returns(args.HttpMethod);

            request.Setup(o => o.Url).Returns(uri);
            request.Setup(o => o.PathInfo).Returns(String.Empty);

            return request.Object;
        }

        #region Nested type: MockHttpContextArguments

        public class MockHttpContextArguments
        {
            public string ApplicationPath { get; set; }
            public string RequestPath { get; set; }
            public string HttpMethod { get; set; }
        }

        #endregion
    }
}