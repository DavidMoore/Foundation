using Foundation.Models;

namespace Foundation.Models
{
    public interface IEntityWithUniqueName : IEntity
    {
        /// <summary>
        /// Unique name
        /// </summary>
        string Name { get; set; }
    }
}