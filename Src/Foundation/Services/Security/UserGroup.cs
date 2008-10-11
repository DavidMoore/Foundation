using Castle.ActiveRecord;
using Castle.Components.Validator;
using Foundation.Data.ActiveRecord;

namespace Foundation.Services.Security
{
    /// <summary>
    /// Group with 1 or more associated users
    /// </summary>
    [ActiveRecord]
    public class UserGroup : IGroup
    {
        #region IGroup Members

        /// <summary>
        /// Unique identifier for the group
        /// </summary>
        [PrimaryKey]
        public int Id { get; set; }

        /// <summary>
        /// Name of the group
        /// </summary>
        [PropertyUniqueName]
        [ValidateIsUnique, ValidateNonEmpty, ValidateLength(5, 100)]
        public string Name { get; set; }

        #endregion
    }
}