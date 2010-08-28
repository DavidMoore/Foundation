using System;

namespace Foundation.Services.UnitOfWorkServices
{
    public interface IUnitOfWorkFactory : IDisposable
    {
        /// <summary>
        /// Starts and returns a new unit of work.
        /// </summary>
        /// <returns></returns>
        IUnitOfWork Start();
    }
}