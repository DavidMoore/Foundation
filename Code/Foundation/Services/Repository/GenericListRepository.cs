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
}