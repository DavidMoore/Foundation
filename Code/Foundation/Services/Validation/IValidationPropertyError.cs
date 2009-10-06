namespace Foundation.Services.Validation
{
    /// <summary>
    /// Describes an error for a model property
    /// </summary>
    public interface IValidationPropertyError
    {
        /// <summary>
        /// The name of the property this error corresponds to
        /// </summary>
        string PropertyName { get; set; }

        /// <summary>
        /// The error message
        /// </summary>
        string ErrorMessage { get; set; }
    }
}