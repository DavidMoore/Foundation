using System.Linq;

namespace Foundation.Data
{
    /// <summary>
    /// A data query service exposes an <see cref="IQueryable{T}"/>
    /// implementation,
    /// which can be used to build LINQ queries for that type.
    /// </summary>
    public interface IDataQueryService
    {
        /// <summary>
        /// Gets a queryable instance of <typeparamref name="{T}"/>.
        /// </summary>
        /// <returns></returns>
        IQueryable<T> Get<T>();
    }
}