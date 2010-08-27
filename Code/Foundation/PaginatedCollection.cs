using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;

namespace Foundation
{
    /// <summary>
    /// Adds pagination information to a collection.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class PaginatedCollection<T> : List<T>, IPaginatedCollection<T>
    {
        const int defaultPageSize = 25;

        protected readonly IList<string> pageNames;

        /// <summary>
        /// Gets or sets the current page number.
        /// </summary>
        /// <value>The page.</value>
        public int Page { get; private set; }

        /// <summary>
        /// Gets or sets the number of records to return per page.
        /// </summary>
        /// <value>The size of the page.</value>
        public int PageSize { get; private set; }

        /// <summary>
        /// Gets the total number of records.
        /// </summary>
        /// <value>The record count.</value>
        public int RecordCount { get; private set; }

        /// <summary>
        /// Gets the total number of pages.
        /// </summary>
        /// <value>The page count.</value>
        public int PageCount { get; private set; }
        
        /// <summary>
        /// Initializes a new instance of the <see cref="PaginatedCollection&lt;T&gt;"/> class.
        /// </summary>
        public PaginatedCollection()
        {
            Page = 1;
            PageSize = defaultPageSize;
            RecordCount = 0;
            PageCount = 1;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="PaginatedCollection&lt;T&gt;"/> class.
        /// </summary>
        /// <param name="source">The source.</param>
        /// <param name="page">The page.</param>
        /// <param name="pageSize">Size of the page.</param>
        public PaginatedCollection(IEnumerable<T> source, int page, int pageSize) : this(source, page, pageSize, source.Count()){}

        /// <summary>
        /// Initializes a new instance of the <see cref="PaginatedCollection&lt;T&gt;"/> class.
        /// </summary>
        /// <param name="source">The source.</param>
        /// <param name="page">The page.</param>
        /// <param name="pageSize">Size of the page.</param>
        /// <param name="recordCount">The record count.</param>
        public PaginatedCollection(IEnumerable<T> source, int page, int pageSize, int recordCount)
        {
            Page = page;
            PageSize = pageSize;
            RecordCount = recordCount;
            PageCount = (int)Math.Ceiling(RecordCount / (double)PageSize);

            // Don't skip if there's not enough records. This can happen if we've already been passed
            // the page data rather than the whole list
            var skip = source.Count() <= pageSize ? 0 : (Page - 1) * PageSize;

            // Default page names
            pageNames = Enumerable.Range(1, PageCount).ToList().ConvertAll(input => input.ToString(CultureInfo.CurrentCulture));

            AddRange(source.Skip(skip).Take(pageSize));
        }

        /// <summary>
        /// Gets a value indicating whether there is a page of results preceding this one.
        /// </summary>
        /// <value>
        /// 	<c>true</c> if this instance has a previous page; otherwise, <c>false</c>.
        /// </value>
        public bool HasPreviousPage { get { return Page > 1; } }

        /// <summary>
        /// Gets a value indicating whether there is another page of results following this one.
        /// </summary>
        /// <value>
        /// 	<c>true</c> if this instance has a next page; otherwise, <c>false</c>.
        /// </value>
        public bool HasNextPage { get { return (Page < PageCount); } }
        
        /// <summary>
        /// A collection of names for the pages. Usually this defaults to the page numbers but can
        /// be changed depending on the pagination strategy, i.e. alphabetical names for alphabetical pagination
        /// </summary>
        public IEnumerable<string> PageNames
        {
            get { return pageNames; }
        }
    }
}