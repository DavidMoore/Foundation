using System.Collections;
using System.Collections.Generic;

namespace Foundation
{
    public interface IPaginatedCollection : IEnumerable
    {
        int Page { get; set; }
        int PageSize { get; set; }
        int RecordCount { get; set; }
        int PageCount { get; set; }
        bool HasPreviousPage { get; }
        bool HasNextPage { get; }

        /// <summary>
        /// A collection of names for the pages. Usually this defaults to the page numbers but can
        /// be changed depending on the pagination strategy, i.e. alphabetical names for alphabetical pagination
        /// </summary>
        IList<string> PageNames { get; }
    }
}