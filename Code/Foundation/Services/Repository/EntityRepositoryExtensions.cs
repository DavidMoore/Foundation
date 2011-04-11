using System;
using System.Linq;
using Foundation.Models;

namespace Foundation.Services.Repository
{
    public static class EntityRepositoryExtensions
    {
        /// <summary>
        /// Gets the entity with the specified primary key, or <c>null</c> if it can't be found.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <typeparam name="TPrimaryKey">The type of the primary key.</typeparam>
        /// <param name="repository">The repository containing the entities.</param>
        /// <param name="key">The value of the primary key.</param>
        /// <returns>The entity identified by the primary key of <paramref name="key"/>, otherwise <c>null</c> if one wasn't found.</returns>
        public static T SingleOrDefault<T, TPrimaryKey>(this IRepository<T> repository, TPrimaryKey key) where T : class, IEntity<TPrimaryKey>
        {
            if( repository == null ) throw new ArgumentNullException("repository");
            return repository.Query().SingleOrDefault(entity => entity.Id.Equals(key));
        }
    }
}