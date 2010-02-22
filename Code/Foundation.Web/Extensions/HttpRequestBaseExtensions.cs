using System;
using System.Web;
using Foundation.Extensions;

namespace Foundation.Web.Extensions
{
    public static class HttpRequestBaseExtensions
    {
        /// <summary>
        /// Returns true if the current request came from an XMLHttpRequest
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        /// <exception cref="ArgumentNullException">when <paramref name="request"/> is null</exception>
        public static bool IsAjax(this HttpRequestBase request)
        {
            if (request == null) throw new ArgumentNullException("request");

            return request.Headers["X-Requested-By"].Equals("XMLHttpRequest", StringComparison.OrdinalIgnoreCase)
                   || !request.Headers["Ajax"].IsNullOrEmpty();
        }
    }
}


