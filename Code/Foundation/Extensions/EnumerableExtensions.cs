using System;
using System.Collections.Generic;
using System.Linq;

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

        public static IPaginatedList<T> ToNamedPaginatedList<T>(this IEnumerable<T> source, int page, int pageSize, Func<IEnumerable<T>, string> getPageNameFunction)
        {
            return new NamedPaginatedList<T>(source.ToList(), page, pageSize, getPageNameFunction);
        }

        public static void ForEach<T>(this IEnumerable<T> items, Action<T> action)
        {
            if (items == null) return;
            foreach (var item in items) action(item);
        }
    }
}
