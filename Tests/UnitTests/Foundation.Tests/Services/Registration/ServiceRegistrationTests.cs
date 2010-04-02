using System;
using System.Collections.Generic;
using Foundation.Services;
using Foundation.Services.Registration;
using Foundation.Tests.Services.Discovery;
using Moq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services.Registration
{
    [TestClass]
    public class ServiceRegistrationTests
    {
        [TestMethod]
        public void Registering_UserControl_ignores_dynamic_interface_for_service_contract()
        {
            var serviceManager = new Mock<IServiceManager>();

            IList<Type> contractTypes = new List<Type>();

            serviceManager.Setup(manager => manager.AddService(It.IsAny<Type>(), It.IsAny<Type>(), It.IsAny<string>(), It.IsAny<LifestyleType>()))
                .Callback<Type, Type, string, LifestyleType>((arg1, arg2, arg3, arg4) => contractTypes.Add(arg1));

            var registration = new ServiceRegistration(serviceManager.Object);

            registration.RegisterService(typeof (TestUserControl));

            Assert.AreEqual(2, contractTypes.Count);
            Assert.IsTrue(contractTypes.Contains(typeof(IUserControlInterface)));
            Assert.IsTrue(contractTypes.Contains(typeof(IUserControlInterface2)));
        }

        [TestMethod]
        public void A_service_can_register_for_more_than_1_contract_by_having_multiple_RegisterService_attributes()
        {
            var serviceManager = new Mock<IServiceManager>();

            IList<Type> contractTypes = new List<Type>();

            serviceManager.Setup(manager => manager.AddService(It.IsAny<Type>(), It.IsAny<Type>(), It.IsAny<string>(), It.IsAny<LifestyleType>()))
                .Callback<Type, Type, string, LifestyleType>((arg1, arg2, arg3, arg4) => contractTypes.Add(arg1) );

            var registration = new ServiceRegistration(serviceManager.Object);

            registration.RegisterService(typeof(TestUserControl));

            Assert.AreEqual(2, contractTypes.Count);
            Assert.IsTrue(contractTypes.Contains(typeof(IUserControlInterface)));
            Assert.IsTrue(contractTypes.Contains(typeof(IUserControlInterface2)));
        }

        [TestMethod]
        public void Registers_service_with_name()
        {
            var serviceManager = new Mock<IServiceManager>();

            IDictionary<string,Type> contractTypes = new Dictionary<string, Type>();

            serviceManager.Setup(manager => manager.AddService(It.IsAny<Type>(), It.IsAny<Type>(), It.IsAny<string>(), It.IsAny<LifestyleType>()))
                .Callback<Type, Type, string, LifestyleType>((arg1, arg2, arg3, arg4) => contractTypes.Add(arg3, arg1));

            var registration = new ServiceRegistration(serviceManager.Object);

            registration.RegisterService(typeof(NamedService));

            Assert.AreEqual(1, contractTypes.Count);
            Assert.IsTrue(contractTypes.ContainsKey("Named Service"));
        }

        [RegisterComponent(Name= "Named Service")]
        internal class NamedService : INamedService {}

        internal interface INamedService {}
    }
}


