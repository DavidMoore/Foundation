using System.Linq;
using Foundation.Models;

namespace Foundation.Services.Repository
{
    public class GenericListRepositoryInt<T> : GenericListRepository<T, int> where T : class, IEntity<int>, new()
    {
        /// <summary>
        /// Gets the next primary key.
        /// </summary>
        /// <returns></returns>
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