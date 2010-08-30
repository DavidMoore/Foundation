using Foundation.Models;

namespace Foundation.Data.Hierarchy
{
    /// <summary>
    /// Marks an entity as having tree hierarchy info
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <typeparam name="TId">The type of the identifier field <see cref="IEntity{T}.Id"/></typeparam>
    public interface ITreeEntity<T,TId> where T : class, ITreeEntity<T, TId>, IEntity<TId>
    {
        TreeInfo<T,TId> Tree { get; }
    }
}