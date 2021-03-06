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

        public const string TypeName = "Foundation.Data.Hibernate.UserTypes.PropertyInfoUserType, Foundation.Data.Hibernate";
        
        /// <summary>
        /// The SQL types for the columns mapped by this type. 
        /// </summary>
        public override SqlType[] SqlTypes { get { return sqlTypes; } }

        /// <summary>
        /// The type returned by <c>NullSafeGet()</c>
        /// </summary>
        public override Type ReturnedType { get { return returnedType; } }

        /// <summary>
        /// Retrieve an instance of the mapped class from a JDBC resultset.
        ///             Implementors should handle possibility of null values.
        /// </summary>
        /// <param name="rs">a IDataReader</param><param name="names">column names</param><param name="owner">the containing entity</param>
        /// <returns/>
        /// <exception cref="T:NHibernate.HibernateException">HibernateException</exception>
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

        /// <summary>
        /// Write an instance of the mapped class to a prepared statement.
        ///             Implementors should handle possibility of null values.
        ///             A multi-column type should be written to parameters starting from index.
        /// </summary>
        /// <param name="cmd">a IDbCommand</param><param name="value">the object to write</param><param name="index">command parameter index</param><exception cref="T:NHibernate.HibernateException">HibernateException</exception>
        public override void NullSafeSet(IDbCommand cmd, object value, int index)
        {
            var propertyInfo = (PropertyInfo) value;
            var typeName = propertyInfo.DeclaringType.AssemblyQualifiedName;
            var info = string.Concat(typeName, delimiter, propertyInfo.Name);
            NHibernateUtil.String.NullSafeSet(cmd, info, index);
        }
    }
}