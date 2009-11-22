using System;

namespace Foundation.Models
{
    /// <summary>
    /// Contains sorting information
    /// </summary>
    public class SortInfo
    {
        SortInfo(string fieldName, bool sortDescending)
        {
            FieldName = fieldName;
            SortDescending = sortDescending;
        }

        public SortInfo() {}

        /// <summary>
        /// The name of the sorted field
        /// </summary>
        public string FieldName { get; set; }

        /// <summary>
        /// Is the field sorted ascending (default) or descending?
        /// </summary>
        public bool SortDescending { get; set; }

        public static SortInfo Descending(string fieldName)
        {
            return new SortInfo(fieldName, true);
        }
    }
}