using System;

namespace Foundation.Services.UnitOfWorkServices
{
    /// <summary>
    /// A unit of work is a scope of business logic; essentially a transaction
    /// that can be committed or rolled back.
    /// </summary>
    public interface IUnitOfWork : IDisposable
    {
        /// <summary>
        /// Rolls back this unit of work, and any pending transactions within it.
        /// </summary>
        void Rollback();

        /// <summary>
        /// Commits this unit of work, and any pending transactions within it.
        /// </summary>
        void Commit();
    }
}