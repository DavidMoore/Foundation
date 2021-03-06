﻿using System;
using Foundation.Services.UnitOfWorkServices;
using NHibernate;

namespace Foundation.Data.Hibernate
{
    /// <summary>
    /// Creates a unit of work for the NHibernate data provider.
    /// </summary>
    public class HibernateUnitOfWorkFactory : IUnitOfWorkFactory
    {
        readonly ISessionFactory sessionFactory;

        /// <summary>
        /// Starts and returns a new unit of work.
        /// </summary>
        /// <returns></returns>
        public IUnitOfWork Start()
        {
            return new HibernateUnitOfWork(sessionFactory);
        }

        /// <summary>
        /// Gets the session factory.
        /// </summary>
        /// <value>The session factory.</value>
        internal ISessionFactory SessionFactory
        {
            get { return sessionFactory; }
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="HibernateUnitOfWorkFactory"/> class.
        /// </summary>
        /// <param name="sessionFactory">The session factory.</param>
        public HibernateUnitOfWorkFactory(ISessionFactory sessionFactory)
        {
            if (sessionFactory == null) throw new ArgumentNullException("sessionFactory");
            this.sessionFactory = sessionFactory;
        }

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        /// <filterpriority>2</filterpriority>
        public void Dispose()
        {
            Dispose(true);
        }

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources
        /// </summary>
        /// <param name="disposing"><c>true</c> to release both managed and unmanaged resources; <c>false</c> to release only unmanaged resources.</param>
        void Dispose(bool disposing)
        {
            if (disposing && sessionFactory != null) sessionFactory.Dispose();
        }
    }
}