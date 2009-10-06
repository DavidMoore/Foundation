using System.Collections.Generic;

namespace Foundation.Services.Repository
{
    /// <summary>
    /// Contract for a ActiveRecordRepository, which is used for all database-related
    /// model operations (save, delete etc)
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public interface IRepository<T> where T : class, new()
    {
        /// <summary>
        /// Creates a new instance of the model
        /// </summary>
        /// <returns></returns>
        T Create();

        T Save(T instance);
        T[] Save(params T[] instances);

        //T SaveAndFlush(T instance);

        /// <summary>
        /// Deletes the instance from the database
        /// </summary>
        /// <param name="instance">The object to remove from the database</param>
        void Delete(T instance);

        /// <summary>
        /// Deletes all instances from the database
        /// </summary>
        void DeleteAll();

        /// <summary>
        /// Finds an instance with the specified primary key
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        T Find(int id);

        //T Find(params ICriterion[] criterias);
        //IList<T> List(params ICriterion[] criterias);
        //void Refresh(T instance);

        /// <summary>
        /// Returns a list of all the instances of the model
        /// </summary>
        /// <returns></returns>
        IList<T> List();

        //IList<T> List(Order order);
    }
}