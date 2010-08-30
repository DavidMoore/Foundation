namespace Foundation.Models
{
    /// <summary>
    /// An entity that possesses a unique <see cref="IEntity{T}.Id"/>
    /// and a unique <see cref="Name"/>.
    /// </summary>
    public interface INamedEntity<T> : IEntity<T>
    {
        /// <summary>
        /// A unique name for this entity.
        /// </summary>
        string Name { get; set; }
    }
}