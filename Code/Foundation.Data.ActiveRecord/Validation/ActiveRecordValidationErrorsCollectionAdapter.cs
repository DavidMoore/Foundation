using System.Collections;
using System.Reflection;
using Castle.ActiveRecord.Framework;
using Foundation.Services.Validation;

namespace Foundation.Data.ActiveRecord.Validation
{
    /// <summary>
    /// Converts an ActiveRecord validation error summary into a ValidationErrorsCollection object
    /// </summary>
    internal class ActiveRecordValidationErrorsCollectionAdapter : ValidationErrorsCollectionCollection
    {
        public ActiveRecordValidationErrorsCollectionAdapter(IValidationProvider validator)
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