using Foundation.Models;
using NHibernate.Criterion;

namespace Foundation.Data.Hierarchy
{
    public static class TreeCriteria
    {
        /// <summary>
        /// Matches if the entity is a direct child of the specified node in the tree (one level below)
        /// </summary>
        /// <param name="parent"></param>
        /// <returns></returns>
        public static AbstractCriterion ChildOf(object parent)
        {
            return parent == null ? Restrictions.IsNull("Tree.Parent") : Restrictions.Eq("Tree.Parent", parent);
        }

        /// <summary>
        /// Matches if the entity is descended from the specified ancestor in the true
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="ancestor"></param>
        /// <returns></returns>
        public static AbstractCriterion DescendantOf<T>(T ancestor) where T : class, ITreeEntity<T>, IEntity, new()
        {
            ThrowException.IfArgumentIsNull("ancestor", ancestor);

            return Restrictions.Gt("Tree.LeftValue", ancestor.Tree.LeftValue) &&
                Restrictions.Lt("Tree.RightValue", ancestor.Tree.RightValue);
        }

        /// <summary>
        /// Matches if the entity is an ancestor of the specified descendant in the tree
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="descendant"></param>
        /// <returns></returns>
        public static AbstractCriterion AncestorOf<T>(T descendant) where T : class, ITreeEntity<T>, IEntity, new()
        {
            ThrowException.IfArgumentIsNull("descendant", descendant);

            return Restrictions.Lt("Tree.LeftValue", descendant.Tree.LeftValue) &&
                Restrictions.Gt("Tree.RightValue", descendant.Tree.RightValue);
        }

        /// <summary>
        /// Matches if the entity is the specified child's immediate parent (1 level above) in the tree
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="child"></param>
        /// <returns></returns>
        public static AbstractCriterion ParentOf<T>(T child) where T : class, ITreeEntity<T>, IEntity, new()
        {
            ThrowException.IfArgumentIsNull("child", child);
            return Restrictions.Eq("Id", child.Tree.Parent == null ? 0 : child.Tree.Parent.Id);
        }

        public static AbstractCriterion SiblingOf<T>(T item) where T : class, ITreeEntity<T>, IEntity, new()
        {
            return SiblingOf(item, SiblingList.ExcludeSelf);
        }

        public static AbstractCriterion SiblingOf<T>(T item, SiblingList self) where T : class, ITreeEntity<T>, IEntity, new()
        {
            ThrowException.IfArgumentIsNull("item", item);
            var criteria = item.Tree.Parent != null
                ? Restrictions.Eq("Tree.Parent", item.Tree.Parent)
                : Restrictions.IsNull("Tree.Parent");
            return self == SiblingList.ExcludeSelf ? criteria && !Restrictions.Eq("Id", item.Id) : criteria;
        }

        /// <summary>
        /// Matches if the entity is the same as the specified item, or descended from it
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        public static AbstractCriterion SameOrDescendantOf<T>(T item) where T : class, ITreeEntity<T>, IEntity, new()
        {
            ThrowException.IfArgumentIsNull("item", item);
            return Restrictions.Ge("Tree.LeftValue", item.Tree.LeftValue) && Restrictions.Le("Tree.RightValue", item.Tree.RightValue);
        }
    }
}