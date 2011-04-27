namespace Foundation.Services
{
    /// <summary>
    /// Holds the result of a service call, including a strongly typed
    /// value of the result.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public interface IServiceResult<out T> : IServiceResult
    {
        /// <summary>
        /// Gets the result value.
        /// </summary>
        new T ResultValue { get; }
    }
}