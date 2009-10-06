namespace Foundation.Data.Hierarchy
{
    /// <summary>
    /// Used to determine if an item should be included in the results when it asks for its own siblings
    /// </summary>
    public enum SiblingList
    {
        /// <summary>
        /// Exclude the querying sibling from the results
        /// </summary>
        ExcludeSelf,

        /// <summary>
        /// Include the querying sibling in the results
        /// </summary>
        IncludeSelf
    }
}