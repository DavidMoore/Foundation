namespace Foundation.Services
{
    /// <summary>
    /// The lifestyle types for components / serviecs managed by the <see cref="IServiceManager"/>
    /// </summary>
    public enum LifestyleType
    {
        /// <summary>
        /// A lifestyle with no value
        /// </summary>
        None = 0,

        /// <summary>
        /// A new instance is created and returned each
        /// time the service is resolved from the container
        /// </summary>
        Transient = 1,

        /// <summary>
        /// There will only be a single instance created and the same
        /// instance will be returned for each resolution request
        /// </summary>
        Singleton = 2
    }
}