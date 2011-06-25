namespace Foundation.Build
{
    public enum PdbStrOperation
    {
        /// <summary>
        /// No operation.
        /// </summary>
        None = 0,

        /// <summary>
        /// Writes the stream to the debug symbol file.
        /// </summary>
        Read,

        /// <summary>
        /// Reads the stream from the debug symbol file.
        /// </summary>
        Write
    }
}