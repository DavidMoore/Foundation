namespace Foundation.Web.JavaScript
{
    /// <summary>
    /// Methods for altering the output of property names
    /// </summary>
    public enum JsonPropertyNameFormatting
    {
        /// <summary>
        /// The propery name is not altered at all
        /// </summary>
        Default,

        /// <summary>
        /// thisIsCamelCase
        /// </summary>
        CamelCase,

        /// <summary>
        /// ThisIsPascalCase
        /// </summary>
        PascalCase
    }
}