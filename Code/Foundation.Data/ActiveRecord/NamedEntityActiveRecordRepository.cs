using Foundation.Models;
using Foundation.Services.Repository;
using NHibernate.Criterion;

namespace Foundation.Data.ActiveRecord
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