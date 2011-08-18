using System;
using NHibernate;
using NHibernate.Engine;
using NHibernate.Id;

namespace Foundation.Data.Hibernate.UserTypes
{
    /// <summary>
    /// Generates a sequential GUID for use as primary key. If an
    /// entity already has a valid GUID, then this generator won't reset it,
    /// like the existing <see cref="GuidCombGenerator"/> does.
    /// </summary>
    public class CustomGuidCombGenerator : IIdentifierGenerator
    {
        /// <summary>
        /// Generate a new identifier.
        /// </summary>
        /// <param name="session">The <see cref="ISessionImplementor"/> this id is being generated in.</param>
        /// <param name="obj">The entity for which the id is being generated.</param>
        /// <returns>The new identifier.</returns>
        public object Generate(ISessionImplementor session, object obj)
        {
            if (obj != null)
            {
                // If the object we're generating a GUID for already has a GUID,
                // then we won't change it. This is to facilitate exporting/importing between different systems.
                var perister = session.GetEntityPersister(null, obj);
                var property = obj.GetType().GetProperty(perister.IdentifierPropertyName);
                var id = property.GetValue(obj, null);

                if (id != null && id is Guid)
                {
                    var guid = (Guid)id;
                    if (!guid.Equals(Guid.Empty)) return guid;
                }
            }

            return GenerateComb();
        }

        private static Guid GenerateComb()
        {
            byte[] destinationArray = Guid.NewGuid().ToByteArray();
            DateTime time = new DateTime(0x76c, 1, 1);
            DateTime now = DateTime.Now;
            TimeSpan span = new TimeSpan(now.Ticks - time.Ticks);
            TimeSpan timeOfDay = now.TimeOfDay;
            byte[] bytes = BitConverter.GetBytes(span.Days);
            byte[] array = BitConverter.GetBytes((long)(timeOfDay.TotalMilliseconds / 3.333333));
            Array.Reverse(bytes);
            Array.Reverse(array);
            Array.Copy(bytes, bytes.Length - 2, destinationArray, destinationArray.Length - 6, 2);
            Array.Copy(array, array.Length - 4, destinationArray, destinationArray.Length - 4, 4);
            return new Guid(destinationArray);
        }
    }
}