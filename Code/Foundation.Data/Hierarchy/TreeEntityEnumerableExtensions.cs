using System;
using System.Collections.Generic;
using System.Linq;
using Foundation.Models;
using Foundation.Extensions;

namespace Foundation.Data.Hierarchy
{
    public static class TreeEntityEnumerableExtensions
    {
        /// <summary>
        /// Returns all entities that are siblings of the specified entity.
        /// </summary>
        /// <typeparam name="TEntity">The type of the entity.</typeparam>
        /// <typeparam name="TId">The type of the entity identifier.</typeparam>
        /// <param name="entities">The list of entities.</param>
        /// <param name="entity">The entity whose siblings we are searching for.</param>
        /// <param name="options">Options on whether to include the entity itself in the list.</param>
        /// <returns></returns>
        public static IEnumerable<TEntity> Siblings<TEntity,TId>(this IEnumerable<TEntity> entities, TEntity entity, TreeListOptions options = TreeListOptions.ExcludeSelf) where TEntity : class, ITreeEntity<TEntity,TId>, IEntity<TId>, new()
        {
            VerifyTreeNode(entity);
            return entities.Where(node => (options == TreeListOptions.IncludeSelf || entity != node) && entity.Tree.Parent == node.Tree.Parent );
        }

        /// <summary>
        /// Finds the ancestors of the specified entity.
        /// </summary>
        /// <typeparam name="TEntity">The type of the entity.</typeparam>
        /// <typeparam name="TId">The type of the entity identifier.</typeparam>
        /// <param name="entities">The entities.</param>
        /// <param name="entity">The node.</param>
        /// <param name="options">Options on whether to include the entity itself in the results.</param>
        /// <returns></returns>
        public static IEnumerable<TEntity> Ancestors<TEntity,TId>(this IEnumerable<TEntity> entities, TEntity entity, TreeListOptions options = TreeListOptions.ExcludeSelf) where TEntity : class, ITreeEntity<TEntity,TId>, IEntity<TId>, new()
        {
            VerifyTreeNode(entity);
            var results = entities.Where(node => node.Tree.LeftValue < entity.Tree.LeftValue && node.Tree.RightValue > entity.Tree.RightValue);

            if (options == TreeListOptions.IncludeSelf) results = results.Concat(entity);

            return results;
        }

        /// <summary>
        /// Finds the ancestors of the entities in the list, essentially flattening the hierarchy,
        /// removing duplicates.
        /// </summary>
        /// <typeparam name="TEntity">The type of the entity.</typeparam>
        /// <typeparam name="TId">The type of the entity identifier.</typeparam>
        /// <param name="entities">The entities.</param>
        /// <returns></returns>
        public static IEnumerable<TEntity> Ancestors<TEntity,TId>(this IEnumerable<TEntity> entities) where TEntity : class, ITreeEntity<TEntity,TId>, IEntity<TId>, new()
        {
            return entities.SelectMany(entity => Ancestors<TEntity,TId>(entities, entity, TreeListOptions.IncludeSelf)).Distinct();
        }

        /// <summary>
        /// Finds the children of the specified entity.
        /// </summary>
        /// <typeparam name="TEntity">The type of the entity.</typeparam>
        /// <typeparam name="TId">The type of the entity identifier.</typeparam>
        /// <param name="entities">The entities.</param>
        /// <param name="entity">The parent node to find the children for.</param>
        /// <returns></returns>
        public static IEnumerable<TEntity> Children<TEntity,TId>(this IEnumerable<TEntity> entities, TEntity entity) where TEntity : class, ITreeEntity<TEntity,TId>, IEntity<TId>, new()
        {
            VerifyTreeNode(entity, true);
            return entities.Where(node => node.Tree.Parent == entity);
        }

        /// <summary>
        /// Finds the descendants of the specified entity.
        /// </summary>
        /// <typeparam name="TEntity">The type of the entity.</typeparam>
        /// <typeparam name="TId">The type of the entity identifier.</typeparam>
        /// <param name="entities">The entities.</param>
        /// <param name="entity">The parent node to find the descendants of.</param>
        /// <returns></returns>
        public static IEnumerable<TEntity> Descendants<TEntity,TId>(this IEnumerable<TEntity> entities, TEntity entity) where TEntity : class, ITreeEntity<TEntity,TId>, IEntity<TId>, new()
        {
            VerifyTreeNode(entity);
            return entities.Where(node => node.Tree.LeftValue > entity.Tree.LeftValue && node.Tree.RightValue < entity.Tree.RightValue);
        }

        /// <summary>
        /// Verifies the tree node's values and the integrity of the tree.
        /// </summary>
        /// <typeparam name="TEntity">The type of the entity.</typeparam>
        /// <typeparam name="TId">The type of the entity identifier.</typeparam>
        /// <param name="entity">The entity that is a node in the tree.</param>
        /// <param name="allowNull">All the passed node to be <c>null</c>.</param>
        static void VerifyTreeNode<TEntity,TId>(ITreeEntity<TEntity,TId> entity, bool allowNull = false) where TEntity : class, ITreeEntity<TEntity,TId>, IEntity<TId>, new()
        {
            if (allowNull && entity == null) return;
            if (entity == null) throw new ArgumentNullException("entity");
            if (entity.Tree == null) throw new TreeEntityException("Instance {0} has its TreeInfo set to null. Try rebuilding the tree.", entity);
            if (entity.Tree.LeftValue == 0 || entity.Tree.RightValue == 0) throw new TreeEntityException("Instance {0} has not had its tree info initialized. Try rebuilding the tree.", entity);
        }
    }
}