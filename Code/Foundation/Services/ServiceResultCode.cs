namespace Foundation.Services
{
    /// <summary>
    /// Specifies the result of a service call.
    /// </summary>
    /// <seealso cref="IServiceResult"/>
    public enum ServiceResultCode
    {
        /// <summary>
        /// No result / inverse of <see cref="Success"/>.
        /// </summary>
        /// <remarks>This allows a negative result without suggesting that anything has gone
        /// wrong while determining the result, as <see cref="Error"/> or <see cref="Warning"/> would.</remarks>
        None = 0,

        /// <summary>
        /// The service call succceeded.
        /// </summary>
        Success,

        /// <summary>
        /// The service call succeeded but with 1 or more warnings.
        /// </summary>
        Warning,

        /// <summary>
        /// The service call failed.
        /// </summary>
        Error
    }
}