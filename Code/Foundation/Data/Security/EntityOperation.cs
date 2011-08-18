using System;
using Foundation.Services.Security;

namespace Foundation.Data.Security
{
    /// <summary>
    /// Defines an operation that can be performed on an entity.
    /// </summary>
    public class EntityOperation : IEntityOperation<Guid>
    {
        /// <summary>
        /// Creates an entity operation with the specified name.
        /// </summary>
        /// <param name="name"></param>
        public EntityOperation(string name)
        {
            Name = name;
        }

        /// <summary>
        /// Creates an empty entity operation.
        /// </summary>
        public EntityOperation() {}
        
        /// <summary>
        /// Unique identifier
        /// </summary>
        public Guid Id { get; set; }

        /// <summary>
        /// Unique name
        /// </summary>
        public string Name { get; set; }
    }
}