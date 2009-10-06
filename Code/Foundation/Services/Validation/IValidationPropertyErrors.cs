using System.Collections.Generic;

namespace Foundation.Services.Validation
{
    /// <summary>
    /// Contains a list of errors for a model property
    /// </summary>
    public interface IValidationPropertyErrors : IList<IValidationPropertyError>
    {
        /// <summary>
        /// The name of the property these errors all correspond to
        /// </summary>
        string PropertyName { get; set; }
    }
}