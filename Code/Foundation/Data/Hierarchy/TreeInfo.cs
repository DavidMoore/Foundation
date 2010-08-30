using System;
using System.Collections.Generic;
using Castle.ActiveRecord;
using Foundation.Models;

namespace Foundation.Data.Hierarchy
{
    /// <summary>
    /// Contains common properties for holding and querying tree hierarchy information
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <typeparam name="TId">The type of the id.</typeparam>
    [ActiveRecord]
    public class TreeInfo<T, TId> where T : class, ITreeEntity<T,TId>, IEntity<TId>
    {
        int leftValue;
        T parent;
        int rightValue;

        public TreeInfo()
        {
            Siblings = new List<T>();
            Children = new TreeEntityChildren<T,TId>(Entity);
            Descendants = new List<T>();
            Ancestors = new List<T>();
        }

        public TreeInfo(T entity) : this()
        {
            Entity = entity;
            Children = new TreeEntityChildren<T,TId>(Entity);
        }

        /// <summary>
        /// Gets or sets the entity that this tree info is for.
        /// The <see cref="Children"/> belong to this entity, and
        /// the <see cref="Parent"/> owns this entity.
        /// </summary>
        /// <value>The entity.</value>
        public T Entity { get; set; }

        [PrimaryKey]
        public int Id { get; set; }

        [Property(NotNull = true)]
        public int LeftValue
        {
            get { return leftValue; }
            set
            {
                if( leftValue != value ) IsDirty = true;
                leftValue = value;
            }
        }

        [Property(NotNull = true)]
        public int RightValue
        {
            get { return rightValue; }
            set
            {
                if( rightValue != value ) IsDirty = true;
                rightValue = value;
            }
        }

        [BelongsTo]
        public T Parent
        {
            get { return parent; }
            set
            {
                //if( Entity == null) throw new InvalidOperationException("Please set the Entity before using the TreeInfo object!");
                if( Entity != null && value != null )
                {
                    if( value == Entity || (!value.Id.Equals(default(TId)) && value.Id.Equals(Entity.Id)) )
                        throw new InvalidOperationException("You can't make a tree node its own parent!");
                }

                // Mark as changed (dirty) if the parent has been altered.
                if( parent != value ) IsDirty = true;

                // If the parent was changed, we need to remove ourselves
                // from the previous parent's Children
                if (IsDirty && parent != null && parent.Tree != null)
                {
                    parent.Tree.Children.Remove(Entity);
                }

                // Set the parent first. If we don't do this, we'll get a stack overflow, because the next step will call
                // this property setter again when it sees parent is null.
                parent = value;

                // Add to the new parent's children (if applicable)
                if (IsDirty && value != null && value.Tree != null && Entity != null)
                {
                    value.Tree.Children.Add(Entity);
                }
            }
        }

        /// <summary>
        /// All siblings
        /// </summary>
        public IList<T> Siblings { get; private set; }

        /// <summary>
        /// All children immediately below this node
        /// </summary>
        public TreeEntityChildren<T,TId> Children { get; private set; }

        /// <summary>
        /// All children below this node, right down to the lowest level
        /// </summary>
        public IList<T> Descendants { get; private set; }

        /// <summary>
        /// The parents of this node, right up to the top of the tree
        /// </summary>
        public IList<T> Ancestors { get; private set; }

        /// <summary>
        /// Marks if the position of this node in the tree has changed, and needs
        /// to be updated
        /// </summary>
        public bool IsDirty { get; set; }
    }
}