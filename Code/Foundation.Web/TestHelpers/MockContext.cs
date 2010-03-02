using System;
using System.Collections.Specialized;
using System.Globalization;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Foundation.Extensions;
using Moq;

namespace Foundation.Web.TestHelpers
{
    /// <summary>
    /// Helper for mocking the request context for ASP.NET MVC
    /// </summary>
    public class MockContext
    {
        public const string AppPathModifier = "/(S(sessiontoken))";

        public MockContext()
        {
            RequestHeaders = new NameValueCollection();
            Form = new NameValueCollection();
            ResponseCookies = new HttpCookieCollection();
            RequestCookies = new HttpCookieCollection();

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
            MockViewContext.Setup(c => c.HttpContext).Returns(HttpContext);
            MockViewContext.Setup(c => c.RouteData).Returns(RouteData);
            MockViewContext.Setup(c => c.ViewData).Returns(ViewDataDictionary);

            MockViewDataContainer = new Mock<IViewDataContainer>();
            MockViewDataContainer.Setup(vdc => vdc.ViewData).Returns(ViewDataDictionary);
        }

        [CLSCompliant(false)]
        public Mock<HttpContextBase> MockHttpContext { get; set; }

        public ControllerContext GetControllerContext(ControllerBase controller)
        {
            return new ControllerContext(HttpContext, RouteData, controller);
        }

        public HttpContextBase HttpContext { get { return MockHttpContext.Object; } }
        public RouteCollection RouteCollection { get; private set; }

        [CLSCompliant(false)]
        public RouteData RouteData { get; set; }

        [CLSCompliant(false)]
        public Mock<ViewContext> MockViewContext { get; set; }
        public Mock<IViewDataContainer> MockViewDataContainer { get; set; }
        public ViewDataDictionary ViewDataDictionary { get; private set; }

        /// <summary>
        /// The posted form values for HttpContext.Request.Form
        /// </summary>
        public NameValueCollection Form { get; private set; }

        [CLSCompliant(false)]
        public Mock<HttpContextBase> GetHttpContext(string appPath, string requestPath, string httpMethod, string protocol, int port)
        {
            var context = new Mock<HttpContextBase>();
            var request = new Mock<HttpRequestBase>();
            var response = new Mock<HttpResponseBase>();

            if( !appPath.IsNullOrEmpty() )
            {
                request.Setup(o => o.ApplicationPath).Returns(appPath);
            }
            if( !requestPath.IsNullOrEmpty() )
            {
                request.Setup(o => o.AppRelativeCurrentExecutionFilePath).Returns(requestPath);
                if( !String.IsNullOrEmpty(appPath) )
                {
                    var absolutePath = VirtualPathUtility.ToAbsolute(requestPath, appPath);
                    request.Setup(o => o.Path).Returns(absolutePath);
                }
            }

            var uri = port >= 0 ? new Uri(protocol + "://localhost" + ":" + Convert.ToString(port,CultureInfo.CurrentCulture)) : new Uri(protocol + "://localhost");

            request.Setup(o => o.Url).Returns(uri);
            request.Setup(o => o.Headers).Returns(RequestHeaders);
            request.Setup(o => o.Form).Returns(Form);

            request.Setup(o => o.Cookies).Returns(RequestCookies);
            response.Setup(o => o.Cookies).Returns(ResponseCookies);

            request.Setup(o => o.PathInfo).Returns(string.Empty);

            request.Setup(o => o.Params).Returns(Form);

            if( !String.IsNullOrEmpty(httpMethod) )
            {
                request.Setup(o => o.HttpMethod).Returns(httpMethod);
            }

            context.Setup(o => o.Session).Returns((HttpSessionStateBase)null);
            context.Setup(o => o.Response.ApplyAppPathModifier(It.IsAny<string>())).Returns<string>(r => AppPathModifier + r);

            context.Setup(o => o.Request).Returns(request.Object); // Request
            context.Setup(o => o.Response).Returns(response.Object); // Response

            return context;
        }

        protected HttpCookieCollection RequestCookies { get; private set; }

        protected HttpCookieCollection ResponseCookies { get; private set; }

        /// <summary>
        /// The request headers
        /// </summary>
        public NameValueCollection RequestHeaders { get; private set; }

        [CLSCompliant(false)]
        public Mock<HttpContextBase> GetHttpContext(string appPath, string requestPath, string httpMethod)
        {
            return GetHttpContext(appPath, requestPath, httpMethod, Uri.UriSchemeHttp, -1);
        }
    }
}