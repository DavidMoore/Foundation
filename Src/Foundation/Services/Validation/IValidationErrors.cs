using System.Collections.Generic;

namespace Foundation.Services.Validation
{
    /// <summary>
    /// Contains a list of property errors for a model object
    /// </summary>
    public interface IValidationErrors : IList<IValidationPropertyError>
    {
        /// <summary>
        /// Get only the errors for a specific property
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        IList<IValidationPropertyError> ErrorsForProperty(string property);
    }
}