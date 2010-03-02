using Castle.ActiveRecord;
using Castle.ActiveRecord.Framework;
using Foundation.Services.Validation;

namespace Foundation.Data.ActiveRecord.Validation
{
    public class ActiveRecordModelValidator : IModelValidator
    {
        #region IModelValidator Members

        /// <summary>
        /// Returns true if the model validates
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public bool IsValid(object model)
        {
            return new ActiveRecordValidator(model).IsValid();
        }

        /// <summary>
        /// Throws a validation exception if any of the properties don't validate
        /// </summary>
        /// <param name="model"></param>
        public void Validate(object model)
        {
            IValidationProvider validator = new ActiveRecordValidator(model);
            if( validator.IsValid() ) return;
            throw new ModelValidationException(new ActiveRecordValidationErrorsCollectionAdapter(validator));
        }

        /// <summary>
        /// Returns the list of invalid property errors for the model
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public IValidationErrorsCollection GetValidationErrors(object model)
        {
            IValidationProvider validator = new ActiveRecordValidator(model);

            return validator.IsValid() ? new ValidationErrorsCollectionCollection() : new ActiveRecordValidationErrorsCollectionAdapter(validator);
        }

        #endregion
    }
}