using System;
using Castle.ActiveRecord;
using Foundation.Data.Hibernate.UserTypes;

namespace Foundation.Data.ActiveRecord
{
    /// <summary>
    /// Allows transparent storing and retrieving of colours in the database
    /// </summary>
    [AttributeUsage(AttributeTargets.Property)]
    public class ColorPropertyAttribute : PropertyAttribute
    {
        public ColorPropertyAttribute()
        {
            ColumnType = typeof(ColorUserType).AssemblyQualifiedName;
        }
    }
}