using System.Collections.Generic;

namespace Foundation.Extensions
{
    public static class EnumerableExtensions
    {
        /// <summary>
        /// Converts an enumerable collection to a paginated list
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="source"></param>
        /// <param name="page"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public static IPaginatedList<T> ToPaginatedList<T>(this IEnumerable<T> source, int page, int pageSize)
        {
            return new PaginatedList<T>(source, page, pageSize);
        }

        /// <summary>
        /// Converts an enumerable collection to a paginated list
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="source"></param>
        /// <param name="page"></param>
        /// <param name="pageSize"></param>
        /// <param name="count"></param>
        /// <returns></returns>
        public static IPaginatedList<T> ToPaginatedList<T>(this IEnumerable<T> source, int page, int pageSize, int count)
        {
            return new PaginatedList<T>(source, page, pageSize, count);
        }
    }
}
