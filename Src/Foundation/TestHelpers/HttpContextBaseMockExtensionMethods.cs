using System;
using System.Collections.Specialized;
using System.IO;
using System.Security.Principal;
using System.Web;
using Rhino.Mocks;

namespace Foundation.TestHelpers
{
    public static class HttpContextBaseMockExtensionMethods
    {
        public static HttpContextBase DynamicHttpContextBase(this MockRepository mocks)
        {
            return mocks.DynamicHttpContextBase
                (mocks.DynamicHttpRequestBase(),
                    mocks.DynamicHttpResponseBase(),
                    mocks.DynamicHttpSessionStateBase(),
                    mocks.DynamicHttpServerUtilityBase(),
                    mocks.DynamicIPrincipal());
        }

        public static HttpContextBase DynamicHttpContextBase(this MockRepository mocks,
            HttpRequestBase request,
            HttpResponseBase response,
            HttpSessionStateBase session,
            HttpServerUtilityBase server,
            IPrincipal user)
        {
            var context = mocks.DynamicMock<HttpContextBase>();
            SetupResult.For(context.User).Return(user);
            SetupResult.For(context.Request).Return(request);
            SetupResult.For(context.Response).Return(response);
            SetupResult.For(context.Session).Return(session);
            SetupResult.For(context.Server).Return(server);
            mocks.Replay(context);
            return context;
        }

        public static HttpRequestBase DynamicHttpRequestBase(this MockRepository mocks)
        {
            var request = mocks.DynamicMock<HttpRequestBase>();
            var browser = mocks.DynamicMock<HttpBrowserCapabilitiesBase>();
            var form = new NameValueCollection();
            var queryString = new NameValueCollection();
            var cookies = new HttpCookieCollection();
            var serverVariables = new NameValueCollection();


            SetupResult.For(request.Form).Return(form);
            SetupResult.For(request.QueryString).Return(queryString);
            SetupResult.For(request.Cookies).Return(cookies);
            SetupResult.For(request.ServerVariables).Return(serverVariables);
            SetupResult.For(request.Params).Do((Func<NameValueCollection>) (() => CreateParams(queryString, form, cookies, serverVariables)));
            SetupResult.For(request.Browser).Return(browser);


            return request;
        }

        public static NameValueCollection CreateParams(NameValueCollection queryString, NameValueCollection form, HttpCookieCollection cookies,
            NameValueCollection serverVariables)
        {
            var parms = new NameValueCollection(48) {queryString, form};

            for( int i = 0; i < cookies.Count; i++ )
            {
                HttpCookie cookie = cookies.Get(i);
                parms.Add(cookie.Name, cookie.Value);
            }
            parms.Add(serverVariables);
            return parms;
        }

        public static HttpResponseBase DynamicHttpResponseBase(this MockRepository mocks)
        {
            var response = mocks.DynamicMock<HttpResponseBase>();
            var cookies = new HttpCookieCollection();

            SetupResult.For(response.OutputStream).Return(new MemoryStream());
            SetupResult.For(response.Output).Return(new StringWriter());
            SetupResult.For(response.ContentType).PropertyBehavior();
            SetupResult.For(response.Cookies).Return(cookies);

            return response;
        }

        public static HttpSessionStateBase DynamicHttpSessionStateBase(this MockRepository mocks)
        {
            var session = mocks.DynamicMock<HttpSessionStateBase>();
            return session;
        }

        public static HttpServerUtilityBase DynamicHttpServerUtilityBase(this MockRepository mocks)
        {
            var server = mocks.DynamicMock<HttpServerUtilityBase>();
            return server;
        }

        public static IPrincipal DynamicIPrincipal(this MockRepository mocks)
        {
            var principal = mocks.DynamicMock<IPrincipal>();
            return principal;
        }
    }
}