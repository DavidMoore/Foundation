using System;
using System.Collections.Generic;

namespace Foundation.Services.Validation
{
    /// <summary>
    /// Contains a collection of validation errors for a model
    /// </summary>
    public class ValidationErrors : List<IValidationPropertyError>, IValidationErrors
    {
        #region IValidationErrors Members

        /// <summary>
        /// Get only the errors for a specific property
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public IList<IValidationPropertyError> ErrorsForProperty(string property)
        {
            IList<IValidationPropertyError> errors = new List<IValidationPropertyError>(Count);

            foreach( IValidationPropertyError error in this )
            {
                if( error.PropertyName.Equals(property, StringComparison.InvariantCultureIgnoreCase) )
                {
                    errors.Add(error);
                }
            }

            return errors;
        }

        #endregion
    }
}