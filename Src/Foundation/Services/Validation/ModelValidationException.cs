using System;

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

        /// <summary>
        /// Collection of validation errors
        /// </summary>
        public IValidationErrors Errors { get; set; }
    }
}