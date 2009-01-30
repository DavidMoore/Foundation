using Foundation.Services.Security;
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
            return parent == null ? Restrictions.IsNull("TreeInfo.Parent") : Restrictions.Eq("TreeInfo.Parent", parent);
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

            return Restrictions.Gt("TreeInfo.LeftValue", ancestor.TreeInfo.LeftValue) &&
                Restrictions.Lt("TreeInfo.RightValue", ancestor.TreeInfo.RightValue);
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

            return Restrictions.Lt("TreeInfo.LeftValue", descendant.TreeInfo.LeftValue) &&
                Restrictions.Gt("TreeInfo.RightValue", descendant.TreeInfo.RightValue);
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
            return Restrictions.Eq("Id", child.TreeInfo.Parent == null ? 0 : child.TreeInfo.Parent.Id);
        }

        public static AbstractCriterion SiblingOf<T>(T item) where T : class, ITreeEntity<T>, IEntity, new()
        {
            return SiblingOf(item, SiblingList.ExcludeSelf);
        }

        public static AbstractCriterion SiblingOf<T>(T item, SiblingList self) where T : class, ITreeEntity<T>, IEntity, new()
        {
            ThrowException.IfArgumentIsNull("item", item);
            var criteria = item.TreeInfo.Parent != null
                ? Restrictions.Eq("TreeInfo.Parent", item.TreeInfo.Parent)
                : Restrictions.IsNull("TreeInfo.Parent");
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
            return Restrictions.Ge("TreeInfo.LeftValue", item.TreeInfo.LeftValue) && Restrictions.Le("TreeInfo.RightValue", item.TreeInfo.RightValue);
        }
    }
}