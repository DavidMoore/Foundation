using System;
using System.Data;
using System.Reflection;
using NHibernate;
using NHibernate.SqlTypes;

namespace Foundation.Data.Hibernate.UserTypes
{
    public class PropertyInfoUserType : SimpleUserTypeBase
    {
        const string delimiter = "|";
        static readonly Type returnedType = typeof(PropertyInfo);
        static readonly SqlType[] sqlTypes = new[] {SqlTypeFactory.GetString(255)};

        #region IUserType Members

        public override SqlType[] SqlTypes { get { return sqlTypes; } }

        public override Type ReturnedType { get { return returnedType; } }

        public override object NullSafeGet(IDataReader rs, string[] names, object owner)
        {
            // The string in the database contains the type name, then the property name, separated by the delimiter
            var details = ((string) NHibernateUtil.String.NullSafeGet(rs, names[0])).Split(new[] {delimiter},
                StringSplitOptions.RemoveEmptyEntries);

            var typeName = details[0];
            var propertyName = details[1];

            var type = Type.GetType(typeName);
            var propertyInfo = type.GetProperty(propertyName);

            return propertyInfo;
        }

        public override void NullSafeSet(IDbCommand cmd, object value, int index)
        {
            var propertyInfo = (PropertyInfo) value;
            var typeName = propertyInfo.DeclaringType.AssemblyQualifiedName;
            var info = string.Concat(typeName, delimiter, propertyInfo.Name);
            NHibernateUtil.String.NullSafeSet(cmd, info, index);
        }

        #endregion
    }
}