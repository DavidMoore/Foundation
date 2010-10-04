namespace Foundation.Models.IntPrimaryKey
{
    /// <summary>
    /// An entity that possesses a unique <see cref="IEntity{T}.Id"/> and unique <see cref="INamedEntity{T}.Name"/>.
    /// </summary>
    public interface INamedEntity : INamedEntity<int> {}
}