using Foundation.Models;

namespace Foundation.Services.Repository
{
    public interface IPaginatingRepository<T>
    {
        IPaginatedList<T> PagedList(int page, int pageSize);
    }
}