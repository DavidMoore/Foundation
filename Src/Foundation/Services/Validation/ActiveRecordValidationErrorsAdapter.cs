using System.Collections;
using System.Reflection;
using Castle.ActiveRecord.Framework;

namespace Foundation.Services.Validation
{
    /// <summary>
    /// Converts an ActiveRecord validation error summary into a ValidationErrors object
    /// </summary>
    internal class ActiveRecordValidationErrorsAdapter : ValidationErrors
    {
        public ActiveRecordValidationErrorsAdapter(IValidationProvider validator)
        {
            foreach( DictionaryEntry entry in validator.PropertiesValidationErrorMessages )
            {
                var property = (PropertyInfo) entry.Key;

                foreach( string message in (ArrayList) entry.Value )
                {
                    Add(new ValidationPropertyError(property.Name, message));
                }
            }
        }
    }
}