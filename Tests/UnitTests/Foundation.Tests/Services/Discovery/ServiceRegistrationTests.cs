using System;
using System.Collections.Generic;
using Foundation.Services;
using Moq;
using NUnit.Framework;

namespace Foundation.Tests.Services.Discovery
{
    [TestFixture]
    public class ServiceRegistrationTests
    {
        [Test]
        public void Registering_UserControl_ignores_dynamic_interface_for_service_contract()
        {
            var serviceManager = new Mock<IServiceManager>();

            IList<Type> contractTypes = new List<Type>();

            serviceManager.Setup(manager => manager.AddService(It.IsAny<Type>(), It.IsAny<Type>(), It.IsAny<LifestyleType>()))
                .Callback<Type, Type, LifestyleType>((arg1, arg2, arg3) => contractTypes.Add(arg1));

            var registration = new ServiceRegistration(serviceManager.Object);

            registration.RegisterService(typeof (UserControl));

            Assert.AreEqual(2, contractTypes.Count);
            Assert.IsTrue(contractTypes.Contains(typeof(IUserControlInterface)));
            Assert.IsTrue(contractTypes.Contains(typeof(IUserControlInterface2)));
        }

        [Test]
        public void A_service_can_register_for_more_than_1_contract_by_having_multiple_RegisterService_attributes()
        {
            var serviceManager = new Mock<IServiceManager>();

            IList<Type> contractTypes = new List<Type>();

            serviceManager.Setup(manager => manager.AddService(It.IsAny<Type>(), It.IsAny<Type>(), It.IsAny<LifestyleType>()))
                .Callback<Type, Type, LifestyleType>((arg1, arg2, arg3) => contractTypes.Add(arg1) );

            var registration = new ServiceRegistration(serviceManager.Object);

            registration.RegisterService(typeof(UserControl));

            Assert.AreEqual(2, contractTypes.Count);
            Assert.IsTrue(contractTypes.Contains(typeof(IUserControlInterface)));
            Assert.IsTrue(contractTypes.Contains(typeof(IUserControlInterface2)));
        }
    }
}


