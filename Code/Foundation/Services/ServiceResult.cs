using System.Collections.Generic;

namespace Foundation.Services
{
    /// <summary>
    /// Holds the result of a service call, including the status of the result,
    /// and any informational messages accompanying it.
    /// </summary>
    public class ServiceResult : IServiceResult
    {
        readonly IList<IServiceMessage> messages;

        /// <summary>
        /// Initializes a new instance of the <see cref="ServiceResult"/> class.
        /// </summary>
        /// <param name="result">The result.</param>
        public ServiceResult(ServiceResultCode result)
        {
            Result = result;
            messages = new List<IServiceMessage>();
        }

        /// <summary>
        /// Gets the status of the result; i.e. if it succeeded or failed.
        /// </summary>
        /// <value>The result.</value>
        public ServiceResultCode Result { get; private set; }

        /// <summary>
        /// Gets the list of informational messages for the result.
        /// </summary>
        /// <remarks>As an example, an authentication service may return a <see cref="ServiceResultCode.Error"/> result, while
        /// the <see cref="IServiceResult.Messages"/> will contain detail on why the call failed, such as an "Invalid password" message, that
        /// could provide more information to the end user.</remarks>
        /// <value>List of informational messages.</value>
        public IEnumerable<IServiceMessage> Messages
        {
            get { return messages; }
        }
    }
}