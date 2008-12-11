using System;
using System.Data;
using NHibernate.SqlTypes;
using NHibernate.UserTypes;

namespace Foundation.Data.Hibernate.UserTypes
{
    /// <summary>
    /// Provides a simple base for writing user types, requiring less to implement than IUserType
    /// </summary>
    public abstract class SimpleUserTypeBase : IUserType
    {
        public abstract SqlType[] SqlTypes { get; }

        public abstract Type ReturnedType { get; }

        public virtual bool IsMutable { get { return true; } }

        public new virtual bool Equals(object x, object y)
        {
            return object.Equals(x, y);
        }

        public virtual int GetHashCode(object x)
        {
            return x.GetHashCode();
        }

        public abstract object NullSafeGet(IDataReader rs, string[] names, object owner);

        public abstract void NullSafeSet(IDbCommand cmd, object value, int index);

        public virtual object DeepCopy(object value)
        {
            return value;
        }

        public virtual object Replace(object original, object target, object owner)
        {
            return original;
        }

        public virtual object Assemble(object cached, object owner)
        {
            return cached;
        }

        public virtual object Disassemble(object value)
        {
            return value;
        }
    }
}