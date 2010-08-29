using System.Linq;

namespace Foundation.Services.Repository
{
    /// <summary>
    /// Contract for an ActiveRecord Repository, which is used for all database-related
    /// model operations (save, delete etc).
    /// </summary>
    /// <typeparam name="T">The model type.</typeparam>
    public interface IRepository<T> where T : class, new()
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
        /// Deletes the instance from the database.
        /// </summary>
        /// <param name="instance">The object to remove from the database.</param>
        void Delete(T instance);

        /// <summary>
        /// Deletes all instances from the database.
        /// </summary>
        void DeleteAll();
        
        /// <summary>
        /// Returns a queryable list of all the instances of the model.
        /// </summary>
        /// <returns></returns>
        IQueryable<T> List();
    }
}