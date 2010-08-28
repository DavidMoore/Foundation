using System;
using Castle.ActiveRecord;
using Foundation.Data.Hibernate.UserTypes;

namespace Foundation.Data.ActiveRecord
{
    /// <summary>
    /// Annotates a property an ActiveRecord property, setting the ColumnType to the TypeUserType.
    /// </summary>
    /// <remarks>Should only be applied to properties of type <see cref="Type"/></remarks>
    [AttributeUsage(AttributeTargets.Property)]
    public class TypePropertyAttribute : PropertyAttribute
    {
        public TypePropertyAttribute()
        {
            ColumnType = typeof(TypeUserType).AssemblyQualifiedName;
        }
    }
}