namespace Foundation
{
    /// <summary>
    /// Contains a pseudo-enum of HTTP
    /// verb strings
    /// </summary>
    public static class HttpVerb
    {
        /// <summary>
        /// Default HTTP method for fetching data. REST: Read
        /// </summary>
        public const string Get = "GET";

        /// <summary>
        /// Used for submitting data. REST: Create, Update, Delete
        /// </summary>
        public const string Post = "POST";

        /// <summary>
        /// Used to save a resource, creating or overwriting if needed. REST: Create, Overwrite / Replace
        /// </summary>
        public const string Put = "PUT";

        /// <summary>
        /// Used to delete a resource. REST: Delete
        /// </summary>
        public const string Delete = "DELETE";
    }
}