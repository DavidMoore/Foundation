namespace Foundation.Models
{
    /// <summary>
    /// Defines an entity. An entity is simply a model object that
    /// has a unique identifier of type <typeparamref name="T"/>. If
    /// the model object is stored in a database, <see cref="Id"/>
    /// would be the primary key.
    /// </summary>
    /// <typeparam name="T">The type of the identifier field <see cref="Id"/>.</typeparam>
    public interface IEntity<T>
    {
        /// <summary>
        /// Unique identifier.
        /// </summary>
        /// <value>The id.</value>
        T Id { get; set; }
    }
}