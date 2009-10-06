using System;
using System.ComponentModel;
using System.Globalization;
using Castle.ActiveRecord;

namespace Foundation.Data.ActiveRecord
{
    /// <summary>
    /// Assists model binding with ActiveRecord models, by binding the posted primary key values to the ActiveRecord entity
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class ActiveRecordTypeConverter<T> : TypeConverter where T : class
    {
        public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
        {
            var type = value.GetType();

            return type == typeof(string) ? ActiveRecordMediator<T>.FindByPrimaryKey( int.Parse( (string)value,CultureInfo.CurrentCulture) ) : base.ConvertFrom(context, culture, value);
        }

        public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
        {
            return sourceType == typeof(string) || base.CanConvertFrom(context, sourceType);
        }
    }
}