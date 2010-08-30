using System;
using System.Collections.ObjectModel;
using Foundation.Models;

namespace Foundation.Data.Hierarchy
{
    public class TreeEntityChildren<T, TId> : Collection<T> where T : class, ITreeEntity<T, TId>, IEntity<TId>
    {
        public TreeEntityChildren(T parent)
        {
            Parent = parent;
        }

        /// <summary>
        /// The parent node of this collection
        /// </summary>
        public T Parent { get; private set; }

        protected override void InsertItem(int index, T item)
        {
            if (item == null) throw new ArgumentNullException("item");

            ThrowException.IfNull<InvalidOperationException>(Parent, "Please set the Parent property of the collection before trying to use it.");
            if( Parent.Equals(item) ) throw new InvalidOperationException("You can't add a parent as a child of itself!");
            if( Parent.Tree.Parent != null && Parent.Tree.Parent.Equals(item) )
                throw new InvalidOperationException("An entity can't be both child and parent to the same item");

            if( item.Tree != null && item.Tree.Parent != Parent) item.Tree.Parent = Parent;

            if( !base.Contains(item)) base.InsertItem(index, item);
        }
    }
}