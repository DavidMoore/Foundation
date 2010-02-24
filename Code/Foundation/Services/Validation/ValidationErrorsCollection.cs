using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;
using Foundation.Extensions;

namespace Foundation.Services.Validation
{
    /// <summary>
    /// Contains a collection of validation errors for a model
    /// </summary>
    public class ValidationErrorsCollection : List<IValidationPropertyError>, IValidationErrors
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

            foreach( var error in this )
            {
                if( error.PropertyName.Equals(property, StringComparison.InvariantCultureIgnoreCase) )
                {
                    errors.Add(error);
                }
            }

            return errors;
        }

        #endregion

        public override string ToString()
        {
            var typeName = GetType().Name;

            if( Count == 0 ) return "{{{0}: No errors}}".FormatUiCulture(typeName);

            var sb = new StringBuilder();

            sb.AppendFormat(CultureInfo.CurrentUICulture, "{{{0}: ", typeName);
            sb.Append(Count == 1 ? "1 property" : string.Format("{0} properties", Count));
            sb.Append(" failed validation. [");

            var first = true;

            foreach( var error in this )
            {
                if( !first ) sb.Append(", ");
                else first = false;
                sb.AppendFormat(CultureInfo.CurrentUICulture, "{0}: {1}", error.PropertyName, error.ErrorMessage);
            }

            sb.Append("]}}");

            return sb.ToString();
        }
    }
}