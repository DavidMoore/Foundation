using System;
using Foundation.Services.UnitOfWorkServices;
using NHibernate;
using NHibernate.Context;

namespace Foundation.Data.Hibernate
{
    /// <summary>
    /// Implements the unit of work pattern for the NHibernate data provider.
    /// </summary>
    public class HibernateUnitOfWork : IUnitOfWork
    {
        readonly ISessionFactory sessionFactory;
        readonly ISession session;

        /// <summary>
        /// Initializes a new instance of the <see cref="HibernateUnitOfWork"/> class.
        /// </summary>
        /// <param name="sessionFactory">The session factory.</param>
        public HibernateUnitOfWork(ISessionFactory sessionFactory)
        {
            this.sessionFactory = sessionFactory;
            session = sessionFactory.OpenSession();
            session.FlushMode = FlushMode.Commit;
            CurrentSessionContext.Bind(session);
        }

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources
        /// </summary>
        /// <param name="disposing"><c>true</c> to release both managed and unmanaged resources; <c>false</c> to release only unmanaged resources.</param>
        void Dispose(bool disposing)
        {
            if (!disposing || session == null) return;

            session.Dispose();
            CurrentSessionContext.Unbind(sessionFactory);
        }

        /// <summary>
        /// Rolls back this unit of work, and any pending transactions within it.
        /// </summary>
        public void Rollback()
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Commits this unit of work.
        /// </summary>
        public void Commit()
        {
            session.Flush();
        }

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        /// <filterpriority>2</filterpriority>
        public void Dispose()
        {
            Dispose(true);
        }
    }
}