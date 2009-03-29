using Castle.ActiveRecord;
using Foundation.Data.Hierarchy;
using Foundation.Models;

namespace Foundation.Tests.Data.Hierarchy
{
    [ActiveRecord]
    public class Category : ITreeEntity<Category>, IEntity
    {
        public Category(string name) : this()
        {
            Name = name;
        }

        public Category()
        {
            TreeInfo = new TreeInfo<Category>(this);
        }

        [Nested]
        public TreeInfo<Category> TreeInfo { get; set; }

        [Property]
        public string Name { get; set; }

        [PrimaryKey]
        public int Id { get; set; }
    }
}