using NHibernate.Criterion;

namespace Foundation.Services.Repository
{
    public interface IPaginatingRepository<T>
    {
        IPaginatedList<T> PagedList(int page, int pageSize);
        IPaginatedList<T> PagedList(int pageNumber, int pageSize, params Order[] orders);
    }
}