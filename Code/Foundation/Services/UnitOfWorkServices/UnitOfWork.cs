using System;

namespace Foundation.Services.UnitOfWorkServices
{
    public class UnitOfWork : IUnitOfWork
    {
        readonly IUnitOfWork implementation;

        /// <summary>
        /// Initializes a new instance of the <see cref="UnitOfWork"/> class.
        /// </summary>
        public UnitOfWork()
        {
            var factory = UnitOfWorkFactory.Factory;
            if(factory == null) throw new InvalidOperationException("There is no UnitOfWorkFactory configured. Set it by calling UnitOfWorkFactory.SetFactory()");
            
            implementation = factory.Start();
            if( implementation == null) throw new InvalidOperationException("The unit of work factory returned a null unit of work.");
        }

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        /// <filterpriority>2</filterpriority>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources
        /// </summary>
        /// <param name="disposing"><c>true</c> to release both managed and unmanaged resources; <c>false</c> to release only unmanaged resources.</param>
        void Dispose(bool disposing)
        {
            if( disposing && implementation != null) implementation.Dispose();
        }

        /// <summary>
        /// Rolls back this unit of work.
        /// </summary>
        public void Rollback()
        {
            implementation.Rollback();
        }

        /// <summary>
        /// Commits this unit of work.
        /// </summary>
        public void Commit()
        {
            implementation.Commit();
        }
    }
}