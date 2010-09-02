using System;
using Foundation.Models;

namespace Foundation.Services.Repository
{
    public class GenericListRepositoryGuid<T> : GenericListRepository<T, Guid> where T : class, IEntity<Guid>, new()
    {
        /// <summary>
        /// Gets the next primary key.
        /// </summary>
        /// <returns></returns>
        protected override Guid GetNextPrimaryKey()
        {
            return Guid.NewGuid();
        }
    }
}