using System.Collections.Generic;

namespace Foundation
{
    public interface IPaginatedList<T> : IList<T> {
        int Page { get; set; }
        int PageSize { get; set; }
        int RecordCount { get; set; }
        int PageCount { get; set; }
        bool HasPreviousPage { get; }
        bool HasNextPage { get; }
    }
}