using Foundation.Models;

namespace Foundation.Services.Security
{
    /// <summary>
    /// An operation that can be performed on an entity.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public interface IEntityOperation<T> : INamedEntity<T> {}
}