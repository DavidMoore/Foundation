using System;
using Foundation.Data.Hierarchy;
using Foundation.Models;

namespace Foundation.Tests.Data.Hierarchy
{
    public class Category : ITreeEntity<Category, Guid>, INamedEntity<Guid>
    {
        public Category(string name) : this()
        {
            Name = name;
        }

        public Category()
        {
            Id = Guid.NewGuid();
            Tree = new TreeInfo<Category, Guid>(this);
        }

        public TreeInfo<Category, Guid> Tree { get; set; }

        public string Name { get; set; }

        public Guid Id { get; set; }

        public override string ToString()
        {
            return string.Format("Category {0} [{1}]", Id, Name);
        }
    }
}