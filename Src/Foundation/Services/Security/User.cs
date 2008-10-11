using Castle.ActiveRecord;
using Castle.Components.Validator;

namespace Foundation.Services.Security
{
    [ActiveRecord]
    public class User : IWebUser
    {
        #region IWebUser Members

        /// <summary>
        /// Unique identifier
        /// </summary>
        [PrimaryKey]
        public virtual int Id { get; set; }

        /// <summary>
        /// Unique username
        /// </summary>
        [Property(Unique = true, NotNull = true)]
        [ValidateIsUnique, ValidateNonEmpty, ValidateLength(5, 100)]
        public virtual string Name { get; set; }

        /// <summary>
        /// Unique email address
        /// </summary>
        [Property(Unique = true, NotNull = true)]
        [ValidateIsUnique, ValidateNonEmpty, ValidateEmail]
        public virtual string Email { get; set; }

        #endregion
    }
}