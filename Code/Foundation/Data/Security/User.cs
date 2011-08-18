using System;
using Foundation.Services.Security;

namespace Foundation.Data.Security
{
    public class User : IWebUser<Guid>
    {
        public User()
        {
            Id = Guid.NewGuid();
        }

        /// <summary>
        /// Primary key
        /// </summary>
        public Guid Id { get; set; }

        /// <summary>
        /// Unique username
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// Unique email address
        /// </summary>
        public string Email { get; set; }
    }
}