using System;
using Castle.ActiveRecord;

namespace Foundation.Data.ActiveRecord.Security
{
    [ActiveRecord]
    public class EntityType
    {
        Type type;

        public EntityType() {}

        public EntityType(string typeName)
        {
            TypeName = typeName;
        }

        /// <exception cref="ArgumentNullException">when <paramref name="type"/> is null</exception>
        public EntityType(Type type)
        {
            if( type == null) throw new ArgumentNullException("type");
            TypeName = type.AssemblyQualifiedName;
            Type = type;
        }

        /// <summary>
        /// Id for the entity type
        /// </summary>
        [PrimaryKey]
        public int Id { get; set; }

        /// <summary>
        /// The Assembly-qualified name of the type
        /// </summary>
        [Property(Unique = true, NotNull = true)]
        public string TypeName { get; set; }

        /// <summary>
        /// The Type
        /// </summary>
        public Type Type
        {
            get
            {
                if( type == null )
                {
                    // Get the type by name, ignoring case and throwing
                    // an exception on a loading error
                    type = Type.GetType(TypeName, true, true);
                }
                return type;
            }
            set { type = value; }
        }
    }
}