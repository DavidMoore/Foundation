using System;
using System.Runtime.Serialization;

namespace Foundation.Services.Validation
{
    /// <summary>
    /// Holds validation error information
    /// </summary>
    public class ModelValidationException : Exception
    {
        public ModelValidationException(IValidationErrors errors) : base(errors.ToString())
        {
            Errors = errors;
        }

        public ModelValidationException() {}

        public ModelValidationException(string message) : base(message) {}

        public ModelValidationException(string message, Exception innerException) : base(message, innerException) {}

        protected ModelValidationException(SerializationInfo info, StreamingContext context) : base(info, context) {}

        /// <summary>
        /// Collection of validation errors
        /// </summary>
        public IValidationErrors Errors { get; set; }
    }
}