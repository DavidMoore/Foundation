using System;
using Castle.ActiveRecord;
using Foundation.Data.Hibernate.UserTypes;

namespace Foundation.Data.ActiveRecord
{
    /// <summary>
    /// Annotates a property an ActiveRecord property, setting the ColumnType to the PropertyInfoUserType.
    /// </summary>
    [AttributeUsage(AttributeTargets.Property)]
    public class PropertyInfoPropertyAttribute : PropertyAttribute
    {
        public PropertyInfoPropertyAttribute()
        {
            ColumnType = typeof(PropertyInfoUserType).AssemblyQualifiedName;
        }
    }
}