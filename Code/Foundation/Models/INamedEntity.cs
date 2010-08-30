namespace Foundation.Models
{
    /// <summary>
    /// An entity that possesses a unique <see cref="IEntity{T}.Id"/>
    /// and a unique <see cref="Name"/>.
    /// </summary>
    /// <typeparam name="T">The type of the identifier field <see cref="IEntity{T}.Id"/>.</typeparam>
    public interface INamedEntity<T> : IEntity<T>
    {
        /// <summary>
        /// A unique name for this entity.
        /// </summary>
        string Name { get; set; }
    }
}