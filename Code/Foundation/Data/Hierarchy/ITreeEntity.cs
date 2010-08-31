using Foundation.Models;

namespace Foundation.Data.Hierarchy
{
    /// <summary>
    /// Marks an entity as having a place in a tree hierarchy.
    /// As an example, a Category entity may have a Parent Category and multiple
    /// child Categories.
    /// </summary>
    /// <typeparam name="T">The type of the entity.</typeparam>
    /// <typeparam name="TId">The type of the identifier field of the entity.</typeparam>
    public interface ITreeEntity<T,TId> where T : class, ITreeEntity<T, TId>, IEntity<TId>
    {
        /// <summary>
        /// Gets an object that contains information about the entity's place in the tree.
        /// </summary>
        /// <value>Information about the entity's place in the tree.</value>
        TreeInfo<T,TId> Tree { get; }
    }
}