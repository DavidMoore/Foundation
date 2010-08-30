namespace Foundation.Data.Hierarchy
{
    /// <summary>
    /// Options for when querying the tree.
    /// </summary>
    public enum TreeListOptions
    {
        /// <summary>
        /// No options.
        /// </summary>
        None = 0,

        /// <summary>
        /// Return the node being queried on in the results.
        /// </summary>
        IncludeSelf,

        /// <summary>
        /// Exclude the node being queried on from the results.
        /// </summary>
        ExcludeSelf
    }
}