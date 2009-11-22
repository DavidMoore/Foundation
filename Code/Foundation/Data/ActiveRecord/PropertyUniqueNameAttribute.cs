using System;
using Castle.ActiveRecord;

namespace Foundation.Data.ActiveRecord
{
    /// <summary>
    /// Extends the AR Property attribute, with some default properties:
    /// NotNull=true, Unique=true
    /// </summary>
    [AttributeUsage(AttributeTargets.Property)]
    public class PropertyUniqueNameAttribute : PropertyAttribute
    {
        public PropertyUniqueNameAttribute()
        {
            NotNull = true;
            Unique = true;
        }
    }
}