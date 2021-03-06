using Castle.ActiveRecord;
using Castle.Components.Validator;
using Foundation.Services.Security;

namespace Foundation.Data.ActiveRecord.Security
{
    /// <summary>
    /// Group with 1 or more associated users
    /// </summary>
    [ActiveRecord]
    public class UserGroup : IGroup<int>
    {
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
    }
}