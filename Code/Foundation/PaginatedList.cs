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

            // Don't skip if there's not enough records. This can happen if we've already been passed
            // the page data rather than the whole list
            var skip = source.Count() <= pageSize ? 0 : (Page - 1) * PageSize;

            // Default page names
            PageNames = Enumerable.Range(1, PageCount).ToList().ConvertAll(input => input.ToString());

            AddRange(source.Skip(skip).Take(pageSize));
        }

        public bool HasPreviousPage { get { return Page > 1; } }

        public bool HasNextPage { get { return (Page < PageCount); } }

        /// <summary>
        /// A collection of names for the pages. Usually this defaults to the page numbers but can
        /// be changed depending on the pagination strategy, i.e. alphabetical names for alphabetical pagination
        /// </summary>
        public IList<string> PageNames { get; private set; }
    }
}