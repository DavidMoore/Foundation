using System;
using System.Reflection;
using Castle.ActiveRecord;

namespace Foundation.Services.Security
{
    [ActiveRecord]
    public class Permission
    {
        private const string typeUserTypeAssemblyQualifiedName = "Foundation.Data.Hibernate.UserTypes.TypeUserType, Foundation";

        /// <summary>
        /// Id for the permission
        /// </summary>
        [PrimaryKey]
        public int Id { get; set; }

        /// <summary>
        /// The user this applies to (null for all users)
        /// </summary>
        [BelongsTo]
        public User User { get; set; }

        /// <summary>
        /// The User group this applies to (null for all groups)
        /// </summary>
        [BelongsTo]
        public UserGroup UserGroup { get; set; }

        /// <summary>
        /// The type of entity this permission applies to (null to apply to all entities)
        /// </summary>
        [Property(ColumnType = typeUserTypeAssemblyQualifiedName)]
        public Type EntityType { get; set; }

        /// <summary>
        /// The specific property of the Entity this permission applies to (null to apply to all properties in the Entity)
        /// </summary>
        [Property]
        public PropertyInfo Property { get; set; }

        /// <summary>
        /// The operation the permission applies to (null for all operations)
        /// </summary>
        [BelongsTo]
        public EntityOperation Operation { get; set; }

        /// <summary>
        /// Returns if the permission denies or allows access
        /// </summary>
        [Property]
        public bool IsAllowed { get; set; }
    }
}