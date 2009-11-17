using System;
using Castle.ActiveRecord;

namespace Foundation.Data.ActiveRecord
{
    /// <summary>
    /// Extends the AR Property attribute, with some default properties:
    /// NotNull=true,
    /// </summary>
    [AttributeUsage(AttributeTargets.Property)]
    public class PropertyUniqueName : PropertyAttribute
    {
        public PropertyUniqueName()
        {
            NotNull = true;
            Unique = true;
        }
    }
}