namespace Foundation.Services
{
    /// <summary>
    /// Contract for registering services in a container
    /// </summary>
    public interface IServicesRegistry
    {
        /// <summary>
        /// Does any component registration in the services manager
        /// </summary>
        /// <param name="serviceManager"></param>
        void Configure(IServiceManager serviceManager);
    }
}