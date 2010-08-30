using System;
using System.Collections.Generic;
using System.Linq;
using Foundation.Models;

namespace Foundation.Services.Repository
{
    /// <summary>
    /// A simple in-memory repository that uses a generic list
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class GenericListRepository<T> : IRepository<T> where T : class, IEntity, new()
    {
        protected IList<T> Items { get; private set;}

        public GenericListRepository()
        {
            Items = new List<T>();
        }

        #region IRepository<T> Members

        public T Create()
        {
            return new T();
        }

        public T Save(T instance)
        {
            var index = Items.IndexOf(instance);

            if( index > -1 )
            {
                Items[index] = instance;
            }
            else
            {
                // Set the primary key
                instance.Id = GetNextPrimaryKey();
                Items.Add(instance);
            }

            return instance;
        }

        /// <exception cref="ArgumentNullException">when <paramref name="instances"/> is null</exception>
        public T[] Save(params T[] instances)
        {
            if (instances == null) throw new ArgumentNullException("instances");
            var results = new List<T>(instances.Length);

            foreach( var instance in instances )
            {
                Save(instance);
            }

            return results.ToArray();
        }

        public void Delete(T instance)
        {
            Items.Remove(instance);
        }

        public void DeleteAll()
        {
            Items.Clear();
        }

        public T Find(int id)
        {
            return Items.SingleOrDefault(x => x.Id == id);
        }

        public IQueryable<T> Query()
        {
            return Items.AsQueryable();
        }

        #endregion

        int GetNextPrimaryKey()
        {
            // If the list is empty we start at 1
            if( Items.Count == 0 ) return 1;

            // Find the "newest" item and increment that for our primary key
            var startId = Items[Items.Count - 1].Id + 1;

            // Make sure no other content has this id, incrementing it
            // until it is unique
            var id = startId;
            while( Items.SingleOrDefault(x => x.Id.Equals(id)) != null ) id++;
            return id;
        }
    }
}