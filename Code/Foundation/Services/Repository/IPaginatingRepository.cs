using Foundation.Models;

namespace Foundation.Services.Repository
{
    public interface IPaginatingRepository<T>
    {
        IPaginatedCollection<T> PagedList(int page, int pageSize);
        IPaginatedCollection<T> PagedList(int pageNumber, int pageSize, string search, params SortInfo[] sortInfo);
    }
}