namespace Foundation.Services.Validation
{
    /// <summary>
    /// Exposes validation methods for validating the properties of model objects
    /// </summary>
    public interface IModelValidator
    {
        /// <summary>
        /// Returns true if the model validates
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        bool IsValid(object model);

        /// <summary>
        /// Throws a validation exception if any of the properties don't validate
        /// </summary>
        /// <param name="model"></param>
        void Validate(object model);

        /// <summary>
        /// Returns the list of invalid property errors for the model
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        IValidationErrors GetValidationErrors(object model);
    }
}