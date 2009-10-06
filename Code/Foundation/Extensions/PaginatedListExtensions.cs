using System.Linq;

namespace Foundation.Extensions
{
    public static class PaginatedListExtensions
    {
        public static IPaginatedList<TCastTo> CastTo<TCastFrom, TCastTo>(this IPaginatedList<TCastFrom> list) where TCastFrom : TCastTo
        {
            return new PaginatedList<TCastTo>(list.Cast<TCastTo>(), list.Page, list.PageSize, list.RecordCount);
        }
    }
}
