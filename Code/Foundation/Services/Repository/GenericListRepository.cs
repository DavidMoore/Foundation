using System.Collections.Generic;
using System.Linq;
using Foundation.Models;

namespace Foundation.Services.Repository
{
    /// <summary>
    /// A simple in-memory repository that uses a generic list
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <typeparam name="TId">The type of the identifier.</typeparam>
    public abstract class GenericListRepository<T, TId> : IRepository<T> where T : class, IEntity<TId>, new()
    {
        protected IList<T> Items { get; private set;}

        protected GenericListRepository()
        {
            Items = new List<T>();
        }

        public T Create()
        {
            return new T();
        }

        public T Save(T instance)
        {
            if (!Items.Contains(instance))
            {
                // Set the primary key
                instance.Id = GetNextPrimaryKey();
                Items.Add(instance);
            }
            return instance;
        }

        public void Delete(T instance)
        {
            Items.Remove(instance);
        }
        
        public IQueryable<T> Query()
        {
            return Items.AsQueryable();
        }

        protected abstract TId GetNextPrimaryKey();
    }

    public class GenericListRepositoryInt<T> : GenericListRepository<T, int> where T : class, IEntity<int>, new()
    {
        protected override int GetNextPrimaryKey()
        {
            if( Items.Count == 0 ) return 1;

            // Find the "newest" item and increment that for our primary key
            var startId = Items[Items.Count - 1].Id;
            
            // Make sure no other content has this id, incrementing it
            // until it is unique
            var id = startId;
            while( Items.SingleOrDefault(x => x.Id.Equals(id)) != null ) id++;
            return id;
        }
    }
}