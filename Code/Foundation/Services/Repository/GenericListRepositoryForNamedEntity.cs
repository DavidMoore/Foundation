using System;
using System.Linq;
using Foundation.Models;

namespace Foundation.Services.Repository
{
    public class GenericListRepositoryForNamedEntity<T> : GenericListRepository<T>, IEntityWithUniqueNameRepository<T>
        where T : class, IEntityWithUniqueName, new()
    {
        public T Find(string name)
        {
            return Items.FirstOrDefault(t => t.Name.Equals(name, StringComparison.OrdinalIgnoreCase));
        }
    }
}