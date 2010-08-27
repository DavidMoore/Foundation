using Foundation.Models;

namespace Foundation.Services.Repository
{
    public interface IEntityWithUniqueNameRepository<T> : IRepository<T> where T : class, INamedEntity, new()
    {
        /// <summary>
        /// Finds an entity using its unique name
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        T Find(string name);
    }
}