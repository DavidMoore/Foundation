using System.Linq;

namespace Foundation.Services.Repository
{
    /// <summary>
    /// Contract for a Repository, which provides CrUD operations
    /// and querying of a model from a data store.
    /// </summary>
    /// <typeparam name="T">The model type.</typeparam>
    public interface IRepository<T> where T : class
    {
        /// <summary>
        /// Creates and returns a new instance of the model.
        /// </summary>
        /// <returns>A new instance.</returns>
        T Create();

        /// <summary>
        /// Saves the specified instance.
        /// </summary>
        /// <param name="instance">The instance.</param>
        /// <returns></returns>
        T Save(T instance);

        /// <summary>
        /// Deletes the specified instance from the repository.
        /// </summary>
        /// <param name="instance">The instance.</param>
        void Delete(T instance);
        
        /// <summary>
        /// Returns a queryable list of all the instances of the model.
        /// </summary>
        /// <returns></returns>
        IQueryable<T> Query();
    }
}