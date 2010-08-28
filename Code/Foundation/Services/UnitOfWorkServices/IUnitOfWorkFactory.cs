namespace Foundation.Services.UnitOfWorkServices
{
    public interface IUnitOfWorkFactory
    {
        /// <summary>
        /// Starts and returns a new unit of work.
        /// </summary>
        /// <returns></returns>
        IUnitOfWork Start();
    }
}