using System;
using System.Web;
using Moq;

namespace Foundation.TestHelpers
{
    public static class MvcTestHelpers
    {
        public class MockHttpContextArguments
        {
            public string ApplicationPath { get; set; }
            public string RequestPath { get; set; }
            public string HttpMethod { get; set; }
        }

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
            mockContext.Expect(o => o.Request).Returns(mockRequest);

            // Mock the Session
            mockContext.Expect(o => o.Session).Returns((HttpSessionStateBase)null);

            // Mock the HttpResponse
            var mockResponse = GetHttpResponseBase(args);
            mockContext.Expect(o => o.Response).Returns(mockResponse);

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

            if (!string.IsNullOrEmpty(args.ApplicationPath)) request.Expect(o => o.ApplicationPath).Returns(args.ApplicationPath);
            if (!string.IsNullOrEmpty(args.RequestPath)) request.Expect(o => o.AppRelativeCurrentExecutionFilePath).Returns(args.RequestPath);
            if (!string.IsNullOrEmpty(args.HttpMethod)) request.Expect(o => o.HttpMethod).Returns(args.HttpMethod);

            request.Expect(o => o.Url).Returns(uri);
            request.Expect(o => o.PathInfo).Returns(String.Empty);

            return request.Object;
        }
    }
}