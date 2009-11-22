using System;
using System.Collections.Generic;
using System.Linq;
using Castle.ActiveRecord;
using Foundation.Models;
using Foundation.Services.Repository;
using NHibernate.Criterion;

namespace Foundation.Data.Hierarchy
{
    public class TreeActiveRecordRepository<T> : ActiveRecordRepository<T>, ITreeRepository<T> where T : class, ITreeEntity<T>, IEntity, new()
    {
        bool isTreeBeingRebuilt;

        public override T Save(T model)
        {
            var result = base.Save(model);

            using( new TransactionScope() )
            {
                if( !isTreeBeingRebuilt && (model.TreeInfo.LeftValue == 0 || model.TreeInfo.RightValue == 0 || model.TreeInfo.IsDirty) )
                {
                    RebuildTree();
                }
            }

            result.TreeInfo.IsDirty = false;

            return result;
        }

        public IList<T> ListByParent(T parent)
        {
            return parent == null ? List(Restrictions.IsNull("TreeInfo.Parent")) : List(Restrictions.Eq("TreeInfo.Parent", parent));
        }

        public IList<T> ListByParent(T parent, string sortBy, bool descending)
        {
            var criteria = parent == null ? Restrictions.IsNull("TreeInfo.Parent") : Restrictions.Eq("TreeInfo.Parent", parent);
            return List(sortBy, descending, criteria );
        }

        public IList<T> ListDescendants(T parent)
        {
            return List(Restrictions.Between("TreeInfo.LeftValue", parent.TreeInfo.LeftValue + 1, parent.TreeInfo.RightValue - 1));
        }

        public void RebuildTree()
        {
            isTreeBeingRebuilt = true;

            // Get all nodes
            var nodes = List();

            // Get the root nodes
            var rootList = nodes.Where(x => x.TreeInfo.Parent == null);

            var rightValue = 1;

            foreach( var item in rootList )
            {
                rightValue = UpdateNode(item, rightValue, nodes);
            }

            isTreeBeingRebuilt = false;
        }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA2204:Literals should be spelled correctly", MessageId = "TreeInfo")]
        public IList<T> ListAncestors(T child)
        {
            ThrowException.IfArgumentIsNull("child", child);
            ThrowException.IfNull<InvalidOperationException>(child.TreeInfo, "Instance {0} has its TreeInfo set to null. Try rebuilding the tree.", child);

            return List(
                Restrictions.Lt("TreeInfo.LeftValue", child.TreeInfo.LeftValue) &&
                    Restrictions.Gt("TreeInfo.RightValue", child.TreeInfo.RightValue));
        }

        public IList<T> ListSiblings(T item)
        {
            return ListSiblings(item, SiblingList.ExcludeSelf);
        }

        public IList<T> ListSiblings(T item, SiblingList siblingList)
        {
            var criteria = item.TreeInfo.Parent == null
                ? Restrictions.IsNull("TreeInfo.Parent")
                : Restrictions.Eq("TreeInfo.Parent", item.TreeInfo.Parent);

            return List(siblingList == SiblingList.ExcludeSelf ? criteria && !Restrictions.Eq("Id", item.Id) : criteria);
        }

        int UpdateNode(T node, int leftValue, IList<T> nodes)
        {
            node.TreeInfo.LeftValue = leftValue;

            // A node with no children has a rightValue of leftValue + 1
            var rightValue = leftValue + 1;

            // If we have any children, process recursively, updating
            // the rightValue as we go.
            var children = nodes.Where(x => x.TreeInfo.Parent != null && x.TreeInfo.Parent.Id.Equals(node.Id));

            foreach( var child in children )
            {
                rightValue = UpdateNode(child, rightValue, nodes);
            }

            // Now we have our rightValue
            node.TreeInfo.RightValue = rightValue;

            Save(node);

            return rightValue + 1;
        }
    }
}