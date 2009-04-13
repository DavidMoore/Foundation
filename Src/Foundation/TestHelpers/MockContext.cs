using System;
using System.Collections.Specialized;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Moq;

namespace Foundation.TestHelpers
{
    /// <summary>
    /// Helper for mocking the request context for ASP.NET MVC
    /// </summary>
    public class MockContext
    {
        public const string AppPathModifier = "/(S(sessiontoken))";

        public MockContext()
        {
            MockHttpContext = GetHttpContext("/app/", null, null);

            RouteCollection = new RouteCollection
                {
                    {"Default", new Route("{controller}/{action}/{id}", null)
                        {
                            Defaults = new RouteValueDictionary(new {id = string.Empty, action="Index"})
                        }
                        },

                    {"AdminMediaLink", new Route("admin/{controller}/{action}/{*path}", null)
                        {
                            Defaults = new RouteValueDictionary(new { action = "Index", path = (string)null })
                        }
                        },

                    {"namedroute", new Route("named/{controller}/{action}/{id}", null) {Defaults = new RouteValueDictionary(new {id = "defaultid"})}}
                };

            RouteData = new RouteData();
            RouteData.Values.Add("controller", "home");
            RouteData.Values.Add("action", "oldaction");

            ViewDataDictionary = new ViewDataDictionary();

            MockViewContext = new Mock<ViewContext>();
            MockViewContext.Expect(c => c.HttpContext).Returns(HttpContext);
            MockViewContext.Expect(c => c.RouteData).Returns(RouteData);
            MockViewContext.Expect(c => c.ViewData).Returns(ViewDataDictionary);

            MockViewDataContainer = new Mock<IViewDataContainer>();
            MockViewDataContainer.Expect(vdc => vdc.ViewData).Returns(ViewDataDictionary);

            RequestHeaders = new NameValueCollection();
        }

        public Mock<HttpContextBase> MockHttpContext { get; set; }

        public ControllerContext GetControllerContext(ControllerBase controller)
        {
            return new ControllerContext(HttpContext, RouteData, controller);
        }

        public HttpContextBase HttpContext { get { return MockHttpContext.Object; } }
        public RouteCollection RouteCollection { get; set; }
        public RouteData RouteData { get; set; }
        public Mock<ViewContext> MockViewContext { get; set; }
        public Mock<IViewDataContainer> MockViewDataContainer { get; set; }
        public ViewDataDictionary ViewDataDictionary { get; set; }

        public Mock<HttpContextBase> GetHttpContext(string appPath, string requestPath, string httpMethod, string protocol, int port)
        {
            var mockHttpContext = new Mock<HttpContextBase>();

            if( !String.IsNullOrEmpty(appPath) )
            {
                mockHttpContext.Expect(o => o.Request.ApplicationPath).Returns(appPath);
            }
            if( !String.IsNullOrEmpty(requestPath) )
            {
                mockHttpContext.Expect(o => o.Request.AppRelativeCurrentExecutionFilePath).Returns(requestPath);
                if( !String.IsNullOrEmpty(appPath) )
                {
                    var absolutePath = VirtualPathUtility.ToAbsolute(requestPath, appPath);
                    mockHttpContext.Expect(o => o.Request.Path).Returns(absolutePath);
                }
            }

            var uri = port >= 0 ? new Uri(protocol + "://localhost" + ":" + Convert.ToString(port)) : new Uri(protocol + "://localhost");

            mockHttpContext.Expect(o => o.Request.Url).Returns(uri);

            mockHttpContext.Expect(o => o.Request.Headers).Returns(RequestHeaders);

            mockHttpContext.Expect(o => o.Request.PathInfo).Returns(String.Empty);
            if( !String.IsNullOrEmpty(httpMethod) )
            {
                mockHttpContext.Expect(o => o.Request.HttpMethod).Returns(httpMethod);
            }

            mockHttpContext.Expect(o => o.Session).Returns((HttpSessionStateBase) null);
            mockHttpContext.Expect(o => o.Response.ApplyAppPathModifier(It.IsAny<string>())).Returns<string>(r => AppPathModifier + r);
            
            return mockHttpContext;
        }

        /// <summary>
        /// The request headers
        /// </summary>
        public NameValueCollection RequestHeaders { get; set; }

        public Mock<HttpContextBase> GetHttpContext(string appPath, string requestPath, string httpMethod)
        {
            return GetHttpContext(appPath, requestPath, httpMethod, Uri.UriSchemeHttp, -1);
        }
    }
}