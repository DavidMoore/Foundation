using System.Linq;

namespace Foundation.Data
{
    /// <summary>
    /// A data query service exposes an <see cref="IQueryable{T}"/>
    /// implementation for the specified type <typeparamref name="{T}"/>,
    /// which can be used to build LINQ queries for that type.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public interface IDataQueryService<out T>
    {
        /// <summary>
        /// Gets a queryable instance of <typeparamref name="{T}"/>.
        /// </summary>
        /// <returns></returns>
        IQueryable<T> Get();
    }
}