using System;
using Castle.MicroKernel;
using Castle.Windsor;

namespace Foundation.Services
{
    /// <summary>
    /// Simple class for easily accessing the IoC Container
    /// </summary>
    public class Ioc
    {
        static IWindsorContainer container;

        /// <summary>
        /// The Windsor Container
        /// </summary>
        public static IWindsorContainer Container { get { return container ?? Initialize(); } set { container = value; } }

        /// <summary>
        /// Initializes the container with the passed instance
        /// </summary>
        /// <param name="windsorContainer"></param>
        /// <returns></returns>
        public static IWindsorContainer Initialize(IWindsorContainer windsorContainer)
        {
            Container = windsorContainer;
            return windsorContainer;
        }

        /// <summary>
        /// Initializes the container with the defaults
        /// </summary>
        /// <returns></returns>
        public static IWindsorContainer Initialize()
        {
            return Initialize(new IocContainer());
        }

        /// <summary>
        /// Resolves the specified service type
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static T Resolve<T>() where T: class
        {
            try
            {
                return Container.Resolve<T>();
            }
            catch (ComponentNotFoundException)
            {
                return null;
            }
            
        }

        /// <summary>
        /// Resolves the specified service type with the passed service name
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="name"></param>
        /// <returns></returns>
        public static T Resolve<T>(string name)
        {
            return Container.Resolve<T>(name);
        }

        /// <summary>
        /// Allows a registry to do component registration
        /// </summary>
        /// <param name="registry"></param>
        /// <returns></returns>
        public static IWindsorContainer AddRegistry(IServicesRegistry registry)
        {
            registry.Configure(Container);
            return Container;
        }
    }
}