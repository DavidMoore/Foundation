using System;
using System.Linq;
using Foundation.Services.Security;

namespace Foundation.Services.Repository
{
    public class GenericListRepositoryForNamedEntity<T> : GenericListRepository<T>, IEntityWithUniqueNameRepository<T> where T : class, IEntityWithUniqueName, new()
    {
        public T Find(string name)
        {
            return list.FirstOrDefault(t => t.Name.Equals(name, StringComparison.OrdinalIgnoreCase));
        }
    }
}
