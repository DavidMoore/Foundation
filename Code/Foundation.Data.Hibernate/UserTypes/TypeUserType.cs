using System;
using System.Data;
using NHibernate;
using NHibernate.SqlTypes;

namespace Foundation.Data.Hibernate.UserTypes
{
    public class TypeUserType : SimpleUserTypeBase
    {
        static readonly Type returnedType = typeof(Type);
        static readonly SqlType[] sqlTypes = new[] {SqlTypeFactory.GetString(255)};
        public const string TypeName = "Foundation.Data.Hibernate.UserTypes.TypeUserType, Foundation.Data.Hibernate";

        public override SqlType[] SqlTypes { get { return sqlTypes; } }

        public override Type ReturnedType { get { return returnedType; } }

        /// <summary>
        ///             Retrieve an instance of the mapped class from a JDBC resultset.
        ///             Implementors should handle possibility of null values.
        /// </summary>
        /// <param name="rs">a IDataReader</param>
        /// <param name="names">column names</param>
        /// <param name="owner">the containing entity</param>
        /// <returns>
        /// </returns>
        /// <exception cref="T:NHibernate.HibernateException">HibernateException</exception>
        public override object NullSafeGet(IDataReader rs, string[] names, object owner)
        {
            return Type.GetType((string) NHibernateUtil.String.NullSafeGet(rs, names[0]));
        }

        /// <summary>
        ///             Write an instance of the mapped class to a prepared statement.
        ///             Implementors should handle possibility of null values.
        ///             A multi-column type should be written to parameters starting from index.
        /// </summary>
        /// <param name="cmd">a IDbCommand</param>
        /// <param name="value">the object to write</param>
        /// <param name="index">command parameter index</param>
        /// <exception cref="T:NHibernate.HibernateException">HibernateException</exception>
        public override void NullSafeSet(IDbCommand cmd, object value, int index)
        {
            var typeName = value == null ? null : ((Type) value).FullName;
            NHibernateUtil.String.NullSafeSet(cmd, typeName, index);
        }
    }
}