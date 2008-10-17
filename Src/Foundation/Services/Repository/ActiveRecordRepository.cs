using System;
using System.Collections.Generic;
using Castle.ActiveRecord;
using Castle.ActiveRecord.Framework;
using Foundation.Services.Validation;
using NHibernate;
using NHibernate.Cfg;
using NHibernate.Criterion;
using NHibernate.Driver;

namespace Foundation.Services.Repository
{
    /// <summary>
    /// A base implementation of IRepository
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class ActiveRecordRepository<T> : ISqlRepository, IRepository<T> where T : class, new()
    {
        readonly IModelValidator validator;
        Type type;

        /// <summary>
        /// Parameterless constructor
        /// </summary>
        public ActiveRecordRepository() {}

        /// <summary>
        /// Initializes the ActiveRecordRepository with the specified validator
        /// </summary>
        /// <param name="validator">Validator to use when saving model objects</param>
        public ActiveRecordRepository(IModelValidator validator)
        {
            this.validator = validator;
        }

        /// <summary>
        /// The concrete type of this repository
        /// </summary>
        public virtual Type Type
        {
            get
            {
                if( type == null ) type = typeof(T);
                return type;
            }
        }

        #region IRepository<T> Members

        /// <summary>
        /// Creates a new instance
        /// </summary>
        /// <returns></returns>
        public virtual T Create()
        {
            return new T();
        }

        public virtual T[] Save(params T[] instances)
        {
            foreach( T instance in instances )
            {
                if( validator != null ) validator.Validate(instance);
                Save(instance);
            }

            return instances;
        }

        /// <summary>
        /// Returns a list of all the instances of this type
        /// </summary>
        /// <returns></returns>
        public virtual IList<T> List()
        {
            return ActiveRecordMediator<T>.FindAll();
        }

        /// <summary>
        /// Deletes all instances of this type from the database
        /// </summary>
        public virtual void DeleteAll()
        {
            ActiveRecordMediator<T>.DeleteAll();

            // Do a truncate if using MySQL
            Configuration config = ActiveRecordMediator.GetSessionFactoryHolder().GetConfiguration(typeof(ActiveRecordBase));
            string driver = config.GetProperty("connection.driver_class");
            if( driver.Equals(typeof(MySqlDataDriver).AssemblyQualifiedName) ) ExecuteSql(string.Format("TRUNCATE {0}", Type.Name));
        }

        /// <summary>
        /// Finds an instance of this type using its primary key
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public virtual T Find(int id)
        {
            return ActiveRecordMediator<T>.FindByPrimaryKey(id);
        }

        #endregion

        #region ISqlRepository Members

        public void ExecuteSql(string sql)
        {
            ThrowException.IfArgumentIsNull("sql", sql);

            ISessionFactoryHolder sessionHolder = ActiveRecordMediator.GetSessionFactoryHolder();
            ISession session = sessionHolder.CreateSession(Type);

            try
            {
                IQuery sqlQuery = session.CreateSQLQuery(sql);
                sqlQuery.ExecuteUpdate();
            }
            finally
            {
                sessionHolder.ReleaseSession(session);
            }
        }

        #endregion

        /// <summary>
        /// Saves or Updates the instance
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public virtual T Save(T model)
        {
            if( validator != null ) validator.Validate(model);
            ActiveRecordMediator.Save(model);
            return model;
        }

        /// <summary>
        /// Saves or Updates the instance, and flushes the session
        /// </summary>
        /// <param name="instance"></param>
        /// <returns></returns>
        public virtual T SaveAndFlush(T instance)
        {
            if( validator != null ) validator.Validate(instance);
            ActiveRecordMediator.SaveAndFlush(instance);
            return instance;
        }

        /// <summary>
        /// Deletes an instance from the database
        /// </summary>
        /// <param name="instance"></param>
        public virtual void Delete(T instance)
        {
            ActiveRecordMediator.Delete(instance);
        }

        /// <summary>
        /// Finds an instance by its name. Requires a "Name" property on the model.
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public T FindByName(string name)
        {
            return Find(Restrictions.Eq("Name", name));
        }

        public T Find(params ICriterion[] criterias)
        {
            return ActiveRecordMediator<T>.FindOne(criterias);
        }

        public IList<T> List(params ICriterion[] criterias)
        {
            return ActiveRecordMediator<T>.FindAll(criterias);
        }

        public void Refresh(T instance)
        {
            ActiveRecordMediator<T>.Refresh(instance);
        }

        public IList<T> List(Order order)
        {
            return ActiveRecordMediator<T>.FindAll(new[] {order});
        }
    }
}