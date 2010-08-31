using System;
using System.Linq;

namespace Foundation.Extensions
{
    public static class PaginatedListExtensions
    {
        public static IPaginatedCollection<TCastTo> CastTo<TCastFrom, TCastTo>(this IPaginatedCollection<TCastFrom> collection) where TCastFrom : TCastTo
        {
            if (collection == null) throw new ArgumentNullException("collection");
            return new PaginatedCollection<TCastTo>(collection.Cast<TCastTo>(), collection.Page, collection.PageSize, collection.RecordCount);
        }
    }
}
