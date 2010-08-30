using System;
using System.Collections.Generic;
using System.Linq;
using Castle.ActiveRecord;
using Castle.ActiveRecord.Linq;
using Foundation.Data.ActiveRecord.Validation;
using Foundation.Extensions;
using Foundation.Models;
using Foundation.Services.Repository;
using Foundation.Services.Validation;
using NHibernate;
using NHibernate.Criterion;
using NHibernate.Driver;

namespace Foundation.Data.ActiveRecord
{
    /// <summary>
    /// A base implementation of <see cref="IRepository{T}"/>.
    /// </summary>
    /// <typeparam name="T">The type of the model.</typeparam>
    public class ActiveRecordRepository<T> : IPaginatingRepository<T>, ISqlRepository, IRepository<T> where T : class, new()
    {
        readonly IModelValidator validator;
        Type type;

        /// <summary>
        /// Creates the repository using the default ActiveRecord model validator.
        /// </summary>
        public ActiveRecordRepository()
        {
            validator = new ActiveRecordModelValidator();
        }

        /// <summary>
        /// Initializes the ActiveRecordRepository with the specified validator.
        /// </summary>
        /// <param name="validator">Validator to use when saving model objects.</param>
        public ActiveRecordRepository(IModelValidator validator)
        {
            this.validator = validator;
        }

        /// <summary>
        /// The concrete type of this repository
        /// </summary>
        public virtual Type Type
        {
            get { return type ?? (type = typeof (T)); }
        }
        
        /// <summary>
        /// Creates and returns a new instance.
        /// </summary>
        /// <returns></returns>
        public virtual T Create()
        {
            return new T();
        }

        /// <summary>
        /// Saves the specified instances.
        /// </summary>
        /// <param name="instances">The instances.</param>
        /// <returns></returns>
        public virtual T[] Save(params T[] instances)
        {
            ThrowException.IfArgumentIsNull( "instances", instances );

            if( instances ==  null) throw new ArgumentNullException("instances");

            foreach( var instance in instances )
            {
                Save(instance);
            }

            return instances;
        }

        /// <summary>
        /// Returns a queryable list of all the instances of the model.
        /// </summary>
        /// <returns></returns>
        public virtual IQueryable<T> Query()
        {
            return ActiveRecordLinq.AsQueryable<T>();
        }

        /// <summary>
        /// Deletes all instances of this type from the database
        /// </summary>
        public virtual void DeleteAll()
        {
            ActiveRecordMediator<T>.DeleteAll();

            // Do a truncate if using MySQL
            var config = ActiveRecordMediator.GetSessionFactoryHolder().GetConfiguration(typeof(ActiveRecordBase));
            var driver = config.GetProperty("connection.driver_class");
            if( driver.Equals(typeof(MySqlDataDriver).AssemblyQualifiedName) ) ExecuteSql("TRUNCATE {0}".FormatCurrentCulture(Type.Name));
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

        /// <summary>
        /// Executes some arbitrary generic or native SQL against the underlying SQL store.
        /// </summary>
        /// <param name="sql"></param>
        public void ExecuteSql(string sql)
        {
            ThrowException.IfArgumentIsNull("sql", sql);

            var sessionHolder = ActiveRecordMediator.GetSessionFactoryHolder();
            var session = sessionHolder.CreateSession(Type);

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

        /// <summary>
        /// Saves or Updates the instance.
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
        /// Deletes an instance from the database.
        /// </summary>
        /// <param name="instance"></param>
        public virtual void Delete(T instance)
        {
            ActiveRecordMediator.Delete(instance);
        }

        public T Find(params ICriterion[] criterias)
        {
            return ActiveRecordMediator<T>.FindOne(criterias);
        }

        public IList<T> List(params ICriterion[] criterias)
        {
            return ActiveRecordMediator<T>.FindAll(criterias);
        }

        public IList<T> List(string sortBy, bool descending, params ICriterion[] criterias)
        {
            var order = new Order(sortBy, !descending);
            return ActiveRecordMediator<T>.FindAll(new [] {order}, criterias);
        }

        public void Refresh(T instance)
        {
            ActiveRecordMediator<T>.Refresh(instance);
        }

        public IList<T> List(Order order)
        {
            return ActiveRecordMediator<T>.FindAll(new[] {order});
        }

        public IPaginatedCollection<T> PagedList(int pageNumber, int pageSize)
        {
            return PagedList(pageNumber, pageSize, null);
        }

        public IPaginatedCollection<T> PagedList(int pageNumber, int pageSize, string search, params SortInfo[] sortInfo)
        {
            if( pageNumber < 1) throw new ArgumentException("Page number must be 1 or more!", "pageNumber");
            if( sortInfo == null) throw new ArgumentNullException("sortInfo");

            var ordering = new List<Order>(sortInfo.Length);

            foreach (var info in sortInfo)
            {
                if( info != null && !info.FieldName.IsNullOrEmpty())
                {
                    ordering.Add( new Order(Projections.Property(info.FieldName), !info.SortDescending));
                }
            }

            var firstResult = pageSize*(pageNumber - 1);
            var criteria = new List<ICriterion>();

            if (!search.IsNullOrEmpty())
            {

            }

            var results = ActiveRecordMediator<T>.SlicedFindAll(firstResult, pageSize, ordering.ToArray());

            var count = ActiveRecordMediator<T>.Count();

            return new PaginatedCollection<T>(results, pageNumber, pageSize, count);
        }
    }
}