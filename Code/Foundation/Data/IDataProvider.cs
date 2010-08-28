using System;
using Foundation.Services.UnitOfWorkServices;

namespace Foundation.Data
{
    /// <summary>
    /// A type implementing this interface is reponsible for doing
    /// work to initialize the data layer, and do any required
    /// clean-up when disposed. It should also provide
    /// a <see cref="IUnitOfWorkFactory"/> for Unit of Work services.
    /// </summary>
    public interface IDataProvider : ICanInitialize, IDisposable
    {
        /// <summary>
        /// Gets the unit of work factory for this provider.
        /// </summary>
        /// <returns></returns>
        IUnitOfWorkFactory GetUnitOfWorkFactory();
    }
}