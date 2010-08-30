namespace Foundation.Models
{
    /// <summary>
    /// Contains sorting information
    /// </summary>
    public class SortInfo
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SortInfo"/> class.
        /// </summary>
        /// <param name="fieldName">Name of the field.</param>
        /// <param name="sortDescending">if set to <c>true</c> [sort descending].</param>
        SortInfo(string fieldName, bool sortDescending)
        {
            FieldName = fieldName;
            SortDescending = sortDescending;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="SortInfo"/> class.
        /// </summary>
        public SortInfo() {}

        /// <summary>
        /// The name of the sorted field
        /// </summary>
        public string FieldName { get; set; }

        /// <summary>
        /// Is the field sorted ascending (default) or descending?
        /// </summary>
        public bool SortDescending { get; set; }

        /// <summary>
        /// Creates a new <see cref="SortInfo"/>, sorting on the specified field and in descending order.
        /// </summary>
        /// <param name="fieldName">Name of the field.</param>
        /// <returns></returns>
        public static SortInfo Descending(string fieldName)
        {
            return new SortInfo(fieldName, true);
        }
    }
}