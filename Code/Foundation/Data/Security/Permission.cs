using System;
using System.Reflection;

namespace Foundation.Data.Security
{
    public class Permission
    {
        /// <summary>
        /// Id for the permission
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// The user this applies to (null for all users)
        /// </summary>
        public User User { get; set; }

        /// <summary>
        /// The User group this applies to (null for all groups)
        /// </summary>
        public UserGroup UserGroup { get; set; }

        /// <summary>
        /// The type of entity this permission applies to (null to apply to all entities)
        /// </summary>
        public Type EntityType { get; set; }

        /// <summary>
        /// The specific property of the Entity this permission applies to (null to apply to all properties in the Entity)
        /// </summary>
        public PropertyInfo Property { get; set; }

        /// <summary>
        /// The operation the permission applies to (null for all operations)
        /// </summary>
        public EntityOperation Operation { get; set; }

        /// <summary>
        /// Returns if the permission denies or allows access
        /// </summary>
        public bool IsAllowed { get; set; }
    }
}