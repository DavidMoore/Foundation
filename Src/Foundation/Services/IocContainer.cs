using Castle.Core.Resource;
using Castle.Windsor;
using Castle.Windsor.Configuration.Interpreters;

namespace Foundation.Services
{
    /// <summary>
    /// Inversion of control container
    /// </summary>
    public class IocContainer : WindsorContainer
    {
        /// <summary>
        /// Creates a container, using the configuration found in the application config file
        /// </summary>
        public IocContainer() : base(new XmlInterpreter(new ConfigResource())) {}
    }
}