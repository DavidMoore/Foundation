using System;
using System.Data;
using NHibernate;
using NHibernate.SqlTypes;
using NHibernate.UserTypes;

namespace Foundation.Data.Hibernate.UserTypes
{
    public class UriUserType : IUserType
    {
        private static readonly Type returnedType = typeof(Uri);
        private static readonly SqlType[] sqlTypes = new[] {SqlTypeFactory.GetString(255)};

        #region IUserType Members

        public new bool Equals(object x, object y)
        {
            return object.Equals(x, y);
        }

        /// <summary>Get a hashcode for the instance, consistent with persistence "equality"</summary>
        public int GetHashCode(object x)
        {
            return x.GetHashCode();
        }

        /// <summary>
        /// Gets the Uri string from the database and returns it as a Uri
        /// </summary>
        /// <param name="rs">a IDataReader</param>
        /// <param name="names">column names</param>
        /// <param name="owner">the containing entity</param>
        /// <returns/>
        public object NullSafeGet(IDataReader rs, string[] names, object owner)
        {
            return new Uri( (string) NHibernateUtil.String.NullSafeGet(rs, names[0]) );
        }

        /// <summary>Converts the Uri to a string for writing to the database</summary>
        /// <param name="cmd">a IDbCommand</param>
        /// <param name="value">the object to write</param>
        /// <param name="index">command parameter index</param>
        /// <exception cref="T:NHibernate.HibernateException">HibernateException</exception>
        public void NullSafeSet(IDbCommand cmd, object value, int index)
        {
            string uri = value.ToString();
            NHibernateUtil.String.NullSafeSet(cmd, uri, index);
        }

        public object DeepCopy(object value)
        {
            return value;
        }

        public object Replace(object original, object target, object owner)
        {
            return original;
        }

        public object Assemble(object cached, object owner)
        {
            return cached;
        }

        public object Disassemble(object value)
        {
            return value;
        }

        /// <summary>
        ///             The SQL types for the columns mapped by this type. 
        /// </summary>
        public SqlType[] SqlTypes { get { return sqlTypes; } }

        /// <summary>
        ///             The type returned by 
        /// <c>NullSafeGet()</c>
        /// </summary>
        public Type ReturnedType { get { return returnedType; } }

        /// <summary>
        ///             Are objects of this type mutable?
        /// </summary>
        public bool IsMutable { get { return true; } }

        #endregion
    }
}