using System.Collections;

namespace Foundation
{
    public interface IPaginatedList : IEnumerable
    {
        int Page { get; set; }
        int PageSize { get; set; }
        int RecordCount { get; set; }
        int PageCount { get; set; }
        bool HasPreviousPage { get; }
        bool HasNextPage { get; }
    }
}