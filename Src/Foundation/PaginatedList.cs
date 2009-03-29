using System;
using System.Collections.Generic;
using System.Linq;

namespace Foundation
{
    public class PaginatedList<T> : List<T>, IPaginatedList<T>
    {
        const int defaultPageSize = 25;
        public int Page { get; set; }
        public int PageSize { get; set; }
        public int RecordCount { get; set; }
        public int PageCount { get; set; }

        public PaginatedList()
        {
            Page = 1;
            PageSize = defaultPageSize;
            RecordCount = 0;
            PageCount = 1;
        }

        public PaginatedList(IEnumerable<T> source, int page, int pageSize) : this(source, page, pageSize, source.Count()){}

        public PaginatedList(IEnumerable<T> source, int page, int pageSize, int recordCount)
        {
            Page = page;
            PageSize = pageSize;
            RecordCount = recordCount;
            PageCount = (int)Math.Ceiling(RecordCount / (double)PageSize);

            AddRange(source);
        }

        public bool HasPreviousPage { get { return Page > 1; } }

        public bool HasNextPage { get { return (Page < PageCount); } }
    }
}