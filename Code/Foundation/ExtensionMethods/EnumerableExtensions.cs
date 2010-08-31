using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;

namespace Foundation.ExtensionMethods
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
        public static IPaginatedCollection<T> ToPaginatedList<T>(this IEnumerable<T> source, int page, int pageSize)
        {
            return new PaginatedCollection<T>(source, page, pageSize);
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
        public static IPaginatedCollection<T> ToPaginatedList<T>(this IEnumerable<T> source, int page, int pageSize, int count)
        {
            return new PaginatedCollection<T>(source, page, pageSize, count);
        }

        [SuppressMessage("Microsoft.Design", "CA1006:DoNotNestGenericTypesInMemberSignatures")]
        public static IPaginatedCollection<T> ToNamedPaginatedList<T>(this IEnumerable<T> source, int page, int pageSize, Func<IEnumerable<T>, string> getPageNameFunction)
        {
            return new NamedPaginatedCollection<T>(source.ToList(), page, pageSize, getPageNameFunction);
        }

        /// <exception cref="ArgumentNullException">when <paramref name="action"/> is null</exception>
        public static void ForEach<T>(this IEnumerable<T> items, Action<T> action)
        {
            if (items == null) return;
            if( action == null) throw new ArgumentNullException("action");
            foreach (var item in items) action(item);
        }

        /// <summary>
        /// Adds an item to the specified list of items.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="items">The items.</param>
        /// <param name="item">The item to add.</param>
        /// <returns></returns>
        public static IEnumerable<T> Concat<T>(this IEnumerable<T> items, T item)
        {
            return items.Concat(new[] { item });
        }
    }
}
