namespace Foundation.Services.Security
{
    public class SaltedValue
    {
        /// <summary>
        /// The position of the salt in the salted value
        /// </summary>
        public SaltPosition SaltPosition { get; set; }

        /// <summary>
        /// The salt
        /// </summary>
        public string Salt { get; set; }

        /// <summary>
        /// The value (including salt)
        /// </summary>
        public string Value { get; set; }

        /// <summary>
        /// The original unsalted value
        /// </summary>
        public string UnsaltedValue { get; set; }
    }
}