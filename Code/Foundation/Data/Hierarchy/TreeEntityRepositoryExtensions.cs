using System.Collections.Generic;
using System.Linq;
using Foundation.Models;
using Foundation.Services.Repository;

namespace Foundation.Data.Hierarchy
{
    /// <summary>
    /// Extension methods for an <see cref="IRepository{T}"/> that handles entities of type <see cref="ITreeEntity{T,TId}"/>.
    /// </summary>
    public static class TreeEntityRepositoryExtensions
    {
        /// <summary>
        /// Rebuilds the tree structure. This builds up the calculated <see cref="TreeInfo{T,TId}.LeftValue"/> and
        /// <see cref="TreeInfo{T,TId}.RightValue"/> values used to query the tree. All that's needed to reconstruct
        /// the tree is each entity's <see cref="TreeInfo{T,TId}.Parent"/> value.
        /// </summary>
        /// <typeparam name="TEntity">The type of the entity the repository handles.</typeparam>
        /// <typeparam name="TId">The type of the entity identifier.</typeparam>
        /// <param name="repository">The repository.</param>
        public static void RebuildTree<TEntity,TId>(this IRepository<TEntity> repository) where TEntity : class, ITreeEntity<TEntity,TId>, IEntity<TId>
        {
            // Get all nodes
            var nodes = repository.Query();

            // Get the root nodes
            var rootList = nodes.Where(x => x.Tree.Parent == null);

            Enumerable.Aggregate(rootList, 1, (current, item) => UpdateNode<TEntity, TId>(item, current, nodes));

            // Save the tree
            foreach(var node in nodes) repository.Save(node);
        }

        static int UpdateNode<TEntity, TId>(TEntity node, int leftValue, IEnumerable<TEntity> nodes) where TEntity : class, ITreeEntity<TEntity, TId>, IEntity<TId>
        {
            node.Tree.LeftValue = leftValue;

            // A node with no children has a rightValue of leftValue + 1
            var rightValue = leftValue + 1;

            // If we have any children, process recursively, updating
            // the rightValue as we go.
            var children = nodes.Where(x => x.Tree.Parent != null && x.Tree.Parent.Id.Equals(node.Id));

            rightValue = children.Aggregate(rightValue, (current, child) => UpdateNode<TEntity,TId>(child, current, nodes));

            // Now we have our rightValue
            node.Tree.RightValue = rightValue;

            return rightValue + 1;
        }
    }
}