using System.Collections;
using System.Collections.Generic;

namespace Foundation
{
    /// <summary>
    /// Enhances an <see cref="IEnumerable"/> collection by providing pagination information.
    /// </summary>
    public interface IPaginatedCollection : IEnumerable
    {
        /// <summary>
        /// Gets or sets the current page number.
        /// </summary>
        /// <value>The page.</value>
        int Page { get; }

        /// <summary>
        /// Gets or sets the number of records to return per page.
        /// </summary>
        /// <value>The size of the page.</value>
        int PageSize { get; }

        /// <summary>
        /// Gets the total number of records.
        /// </summary>
        /// <value>The record count.</value>
        int RecordCount { get; }

        /// <summary>
        /// Gets the total number of pages.
        /// </summary>
        /// <value>The page count.</value>
        int PageCount { get; }

        /// <summary>
        /// Gets a value indicating whether there is a page of results preceding this one.
        /// </summary>
        /// <value>
        /// 	<c>true</c> if this instance has a previous page; otherwise, <c>false</c>.
        /// </value>
        bool HasPreviousPage { get; }

        /// <summary>
        /// Gets a value indicating whether there is another page of results following this one.
        /// </summary>
        /// <value>
        /// 	<c>true</c> if this instance has a next page; otherwise, <c>false</c>.
        /// </value>
        bool HasNextPage { get; }

        /// <summary>
        /// A collection of names for the pages. Usually this defaults to the page numbers but can
        /// be changed depending on the pagination strategy, i.e. alphabetical names for alphabetical pagination
        /// </summary>
        IEnumerable<string> PageNames { get; }
    }
}