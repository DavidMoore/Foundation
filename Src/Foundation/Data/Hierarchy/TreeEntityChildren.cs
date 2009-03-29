using System;
using System.Collections.ObjectModel;
using Foundation.Models;

namespace Foundation.Data.Hierarchy
{
    public class TreeEntityChildren<T> : Collection<T> where T : class, ITreeEntity<T>, IEntity
    {
        public TreeEntityChildren(T parent)
        {
            Parent = parent;
        }

        /// <summary>
        /// The parent node of this collection
        /// </summary>
        T Parent { get; set; }

        protected override void InsertItem(int index, T item)
        {
            ThrowException.IfNull<InvalidOperationException>(Parent, "Please set the Parent property of the collection before trying to use it.");
            if( Parent.Equals(item) ) throw new InvalidOperationException("You can't add a parent as a child of itself!");
            if( Parent.TreeInfo.Parent != null && Parent.TreeInfo.Parent.Equals(item) )
                throw new InvalidOperationException("An entity can't be both child and parent to the same item");

            item.TreeInfo.Parent = Parent;

            base.InsertItem(index, item);
        }
    }
}