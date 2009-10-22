using Foundation.Models;
using NHibernate.Criterion;

namespace Foundation.Services.Repository
{
    public class NamedEntityActiveRecordRepository<T> : ActiveRecordRepository<T>, IEntityWithUniqueNameRepository<T>
        where T : class, IEntityWithUniqueName, new()
    {
        public virtual T Find(string name)
        {
            return Find(Restrictions.Eq("Name", name));
        }
    }
}