using Foundation.Models;

namespace Foundation.Services.Security
{
    /// <summary>
    /// Defines a user entity.
    /// </summary>
    /// <typeparam name="T">The type of the identifier.</typeparam>
    public interface IUser<T> : INamedEntity<T> {}
}