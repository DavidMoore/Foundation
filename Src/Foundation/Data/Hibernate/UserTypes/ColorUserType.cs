using System;
using System.Data;
using System.Drawing;
using NHibernate;
using NHibernate.SqlTypes;

namespace Foundation.Data.Hibernate.UserTypes
{
    /// <summary>
    /// Stores and retrieves System.Drawing.Color properties, storing it as the Int32 aRGB value
    /// </summary>
    public class ColorUserType : SimpleUserTypeBase
    {
        static readonly Type returnedType = typeof(Color);
        static readonly SqlType[] sqlTypes = new[] {SqlTypeFactory.Int32};

        public override SqlType[] SqlTypes { get { return sqlTypes; } }

        public override Type ReturnedType { get { return returnedType; } }

        public override object NullSafeGet(IDataReader rs, string[] names, object owner)
        {
            // It is stored in the database as a numerical aRGB integer value
            var value = NHibernateUtil.Int32.NullSafeGet(rs, names[0]);

            // Colour.Empty is stored as NULL, so check for that
            return value == null ? Color.Empty : Color.FromArgb((int)value);
        }

        public override void NullSafeSet(IDbCommand cmd, object value, int index)
        {
            var colour = (Color) value;

            // Convert an empty colour to be written to the database as NULL
            if( colour.Equals(Color.Empty) )
            {
                value = null;
            }
            else
            {
                value = colour.ToArgb();
            }

            NHibernateUtil.Int32.NullSafeSet(cmd, value, index);
        }
    }
}