namespace Foundation.Models
{
    /// <summary>
    /// An entity that possesses a unique <see cref="IEntity.Id"/>
    /// and a unique <see cref="Name"/>
    /// </summary>
    public interface INamedEntity : IEntity
    {
        /// <summary>
        /// Unique name
        /// </summary>
        string Name { get; set; }
    }
}