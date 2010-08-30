using Foundation.Models;

namespace Foundation.Services.Security
{
    /// <summary>
    /// Defines a group.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public interface IGroup<T> : INamedEntity<T> {}
}