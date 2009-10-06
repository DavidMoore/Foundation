using System;
using System.Web;

namespace Foundation.Extensions
{
    public static class HttpRequestBaseExtensions
    {
        /// <summary>
        /// Returns true if the current request came from an XMLHttpRequest
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        public static bool IsAjax(this HttpRequestBase request)
        {
            return request.Headers["X-Requested-By"].Equals("XMLHttpRequest", StringComparison.OrdinalIgnoreCase)
                || !request.Headers["Ajax"].IsNullOrEmpty();
        }
    }
}
