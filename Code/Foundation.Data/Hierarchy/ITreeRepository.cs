using System.Collections.Generic;
using Foundation.Models;
using Foundation.Services.Repository;

namespace Foundation.Data.Hierarchy
{
    /// <summary>
    /// Marks a repository as containing entities with TreeInfo properties, and provides
    /// methods for querying by hierarchy properties
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public interface ITreeRepository<T> : IRepository<T> where T : class, ITreeEntity<T>, IEntity, new()
    {
        /// <summary>
        /// Returns all nodes directly under the specified parent
        /// </summary>
        /// <param name="parent"></param>
        /// <returns></returns>
        IList<T> ListByParent(T parent);

        /// <summary>
        /// Returns all nodes under the specified parent in the tree, down to the lowest level
        /// </summary>
        /// <param name="parent"></param>
        /// <returns></returns>
        IList<T> ListDescendants(T parent);

        /// <summary>
        /// Rebuilds the tree, setting the left and right values of the nodes
        /// </summary>
        void RebuildTree();

        /// <summary>
        /// List all the ancestors of this node, up to the top of the tree
        /// </summary>
        /// <param name="child"></param>
        /// <returns></returns>
        IList<T> ListAncestors(T child);

        /// <summary>
        /// Lists the siblings of an item in the tree, excluding itself from the results by default
        /// </summary>
        /// <param name="item"></param>
        IList<T> ListSiblings(T item);

        /// <summary>
        /// Lists the siblings of an item in the tree
        /// </summary>
        /// <param name="item"></param>
        /// <param name="siblingList">Specifies if the querying sibling should be returned in the results</param>
        IList<T> ListSiblings(T item, SiblingList siblingList);

        /// <summary>
        /// Returns all nodes directly under the specified parent, sorted by the specified field
        /// </summary>
        /// <param name="parent"></param>
        /// <param name="sortBy">The name of the field to sort by</param>
        /// <param name="descending"></param>
        /// <returns></returns>
        IList<T> ListByParent(T parent, string sortBy, bool descending);
    }
}