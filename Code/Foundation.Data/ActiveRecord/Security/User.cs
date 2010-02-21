using System;
using Castle.ActiveRecord;
using Castle.Components.Validator;
using Foundation.Services.Security;

namespace Foundation.Data.ActiveRecord.Security
{
    [ActiveRecord]
    public class User : IWebUser
    {
        public User()
        {
            Guid = Guid.NewGuid();
        }

        /// <summary>
        /// The unique guid
        /// </summary>
        [Property(Unique = true)]
        public Guid Guid { get; set; }

        #region IWebUser Members

        /// <summary>
        /// Primary key
        /// </summary>
        [PrimaryKey]
        public int Id { get; set; }

        /// <summary>
        /// Unique username
        /// </summary>
        [Property(Unique = true, NotNull = true)]
        [ValidateIsUnique, ValidateNonEmpty, ValidateLength(2, 100)]
        public string Name { get; set; }

        /// <summary>
        /// Unique email address
        /// </summary>
        [Property(Unique = true, NotNull = true)]
        [ValidateIsUnique, ValidateNonEmpty, ValidateEmail]
        public string Email { get; set; }

        #endregion
    }
}