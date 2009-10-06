namespace Foundation.Services.Validation
{
    /// <summary>
    /// Contains information about a property error
    /// </summary>
    public class ValidationPropertyError : IValidationPropertyError
    {
        public ValidationPropertyError(string propertyName, string errorMessage)
        {
            PropertyName = propertyName;
            ErrorMessage = errorMessage;
        }

        #region IValidationPropertyError Members

        /// <summary>
        /// The name of the property this error corresponds to
        /// </summary>
        public string PropertyName { get; set; }

        /// <summary>
        /// The error message
        /// </summary>
        public string ErrorMessage { get; set; }

        #endregion
    }
}