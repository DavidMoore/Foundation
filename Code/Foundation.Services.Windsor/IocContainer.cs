using Castle.Windsor;

namespace Foundation.Services.Windsor
{
    /// <summary>
    /// Inversion of control container
    /// </summary>
    public class IocContainer : WindsorContainer
    {
        /// <summary>
        /// Creates a container, using the configuration found in the application config file
        /// </summary>
        public IocContainer() : base(){}// new XmlInterpreter(new ConfigResource())) {}
    }
}