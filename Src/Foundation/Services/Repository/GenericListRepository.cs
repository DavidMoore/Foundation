using System.Collections.Generic;
using System.Linq;
using Foundation.Services.Security;

namespace Foundation.Services.Repository
{
    /// <summary>
    /// A simple in-memory repository that uses a generic list
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class GenericListRepository<T> : IRepository<T> where T : class, IEntity, new()
    {
        protected readonly IList<T> list;

        public GenericListRepository()
        {
            list = new List<T>();
        }

        #region IRepository<T> Members

        public T Create()
        {
            return new T();
        }

        public T[] Save(params T[] instances)
        {
            var results = new List<T>(instances.Length);

            foreach( T instance in instances )
            {
                int index = list.IndexOf(instance);

                if( index > -1 )
                {
                    list[index] = instance;
                    results.Add(list[index]);
                }
                else
                {
                    // Set the primary key
                    instance.Id = GetNextPrimaryKey();
                    list.Add(instance);
                    results.Add(instance);
                }
            }

            return results.ToArray();
        }

        public void DeleteAll()
        {
            list.Clear();
        }

        public T Find(int id)
        {
            return list.SingleOrDefault(x => x.Id == id);
        }

        public IList<T> List()
        {
            return list;
        }

        #endregion

        int GetNextPrimaryKey()
        {
            // If the list is empty we start at 1
            if( list.Count == 0 ) return 1;

            // Find the "newest" item and increment that for our primary key
            int startId = list[list.Count - 1].Id + 1;

            // Make sure no other content has this id, incrementing it
            // until it is unique
            int id = startId;
            while( list.SingleOrDefault(x => x.Id.Equals(id)) != null ) id++;
            return id;
        }
    }
}