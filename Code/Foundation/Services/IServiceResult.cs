using System.Collections.Generic;

namespace Foundation.Services
{
    /// <summary>
    /// Holds the result of a service call, including the status of the result,
    /// and any informational messages accompanying it.
    /// </summary>
    public interface IServiceResult
    {
        /// <summary>
        /// Gets the status of the result; i.e. if it succeeded or failed.
        /// </summary>
        /// <value>The result.</value>
        ServiceResultCode ResultCode { get; }

        /// <summary>
        /// Gets the result value.
        /// </summary>
        object ResultValue { get; }

        /// <summary>
        /// Gets the list of informational messages for the result.
        /// </summary>
        /// <remarks>As an example, an authentication service may return a <see cref="ServiceResultCode.Error"/> result, while
        /// the <see cref="Messages"/> will contain detail on why the call failed, such as an "Invalid password" message, that
        /// could provide more information to the end user.</remarks>
        /// <value>List of informational messages.</value>
        IEnumerable<IServiceMessage> Messages { get; }
    }
}