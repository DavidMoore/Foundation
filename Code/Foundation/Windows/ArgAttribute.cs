using System;

namespace Foundation.Windows
{
    public class ArgAttribute : Attribute
    {
        public ArgAttribute() {}

        /// <summary>
        /// Gets or sets the exact argument to pass to the application.
        /// </summary>
        /// <value>
        /// The argument.
        /// </value>
        public string Argument { get; set; }

        /// <summary>
        /// Gets or sets the argument description for displaying help to the user.
        /// </summary>
        /// <value>
        /// The argument description.
        /// </value>
        public string Description { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether this argument is required.
        /// </summary>
        /// <value>
        ///   <c>true</c> if required; otherwise, <c>false</c>.
        /// </value>
        public bool Required { get; set; }

        public ArgAttribute(string argument, string description)
        {
            Argument = argument;
            Description = description;
        }
    }
}