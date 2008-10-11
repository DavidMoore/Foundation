using Castle.Windsor;

namespace Foundation.Services
{
    /// <summary>
    /// Contract for registering services in an Ioc container
    /// </summary>
    public interface IIocRegistry
    {
        /// <summary>
        /// Does any component registration on the container
        /// </summary>
        /// <param name="container"></param>
        void Configure(IWindsorContainer container);
    }
}