using System.Linq;
using Foundation.Services.Repository;
using NHibernate;
using NHibernate.Linq;

namespace Foundation.Data.Hibernate
{
    /// <summary>
    /// Repository for NHibernate.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class HibernateRepository<T> : IRepository<T> where T : class, new()
    {
        readonly ISessionFactory factory;

        /// <summary>
        /// Initializes a new instance of the <see cref="HibernateRepository&lt;T&gt;"/> class.
        /// </summary>
        /// <param name="factory">The session factory.</param>
        public HibernateRepository(ISessionFactory factory)
        {
            this.factory = factory;
        }

        /// <summary>
        /// Creates and returns a new instance of the model.
        /// </summary>
        /// <returns>A new instance.</returns>
        public virtual T Create()
        {
            return new T();
        }

        /// <summary>
        /// Saves the specified instance.
        /// </summary>
        /// <param name="instance">The instance.</param>
        /// <returns></returns>
        public virtual T Save(T instance)
        {
            CurrentSession.SaveOrUpdate(instance);
            return instance;
        }

        /// <summary>
        /// Deletes the instance from the database.
        /// </summary>
        /// <param name="instance">The object to remove from the database.</param>
        public virtual void Delete(T instance)
        {
            CurrentSession.Delete(instance);
        }

        /// <summary>
        /// Returns a queryable list of all the instances of the model.
        /// </summary>
        /// <returns></returns>
        public virtual IQueryable<T> Query()
        {
            return CurrentSession.Linq<T>();
        }

        /// <summary>
        /// Gets the current session.
        /// </summary>
        /// <value>The current session.</value>
        virtual protected ISession CurrentSession
        {
            get
            {
                return factory.GetCurrentSession();
            }
        }
    }
}