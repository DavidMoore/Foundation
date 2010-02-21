using Castle.ActiveRecord;
using Castle.Components.Validator;
using Foundation.Data.ActiveRecord;

namespace Foundation.Services.Security
{
    /// <summary>
    /// Defines an operation that can be performed on an entity
    /// </summary>
    [ActiveRecord]
    public class EntityOperation : IEntityOperation
    {
        /// <summary>
        /// Creates an entity operation with the specified name
        /// </summary>
        /// <param name="name"></param>
        public EntityOperation(string name)
        {
            Name = name;
        }

        /// <summary>
        /// Creates an empty entity operation
        /// </summary>
        public EntityOperation() {}

        #region IEntityOperation Members

        /// <summary>
        /// Unique identifier
        /// </summary>
        [PrimaryKey]
        public int Id { get; set; }

        /// <summary>
        /// Unique name
        /// </summary>
        [PropertyUniqueName]
        [ValidateIsUnique, ValidateNonEmpty, ValidateLength(5, 100)]
        public string Name { get; set; }

        #endregion
    }
}