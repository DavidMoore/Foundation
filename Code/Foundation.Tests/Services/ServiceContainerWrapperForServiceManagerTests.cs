using System;
using System.ComponentModel.Design;
using Foundation.Services;
using Moq;
using NUnit.Framework;

namespace Foundation.Tests.Services
{
    [TestFixture]
    public class ServiceContainerWrapperForServiceManagerTests
    {
        [Test]
        public void GetService_for_IServiceContainer_returns_self()
        {
            var serviceManager = new Mock<IServiceManager>();

            var serviceContainer = new ServiceManagerServiceContainerAdapter(serviceManager.Object);

            Assert.AreEqual(serviceContainer, serviceContainer.GetService(typeof(IServiceProvider)));
        }

        [Test]
        public void Registers_self_in_container_for_IServiceProvider()
        {
            var serviceManager = new Mock<IServiceManager>();

            IServiceContainer registeredService = null;

            serviceManager.Setup(manager1 => manager1.AddInstance( typeof(IServiceContainer), It.IsAny<IServiceContainer>(), It.IsAny<string>()))
                .Callback(delegate(Type contract, object service, string name)
                              {
                                  registeredService = service as IServiceContainer;
                              });

            var serviceContainer = new ServiceManagerServiceContainerAdapter(serviceManager.Object);

            Assert.AreEqual(serviceContainer, registeredService);

            Assert.AreEqual(serviceContainer, serviceContainer.GetService(typeof(IServiceContainer)));
        }
    }
}