using Foundation.Services;
using Foundation.Services.Registration;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services.Registration
{
    [TestClass]
    public class RegisterComponentTests
    {
        [TestMethod]
        public void Default_lifestyle_is_singleton()
        {
            var attribute = ReflectionUtilities.GetAttribute<RegisterComponentAttribute>(typeof (ServiceImplementation));
            Assert.AreEqual(LifestyleType.Singleton, attribute.Lifestyle);
        }

        [RegisterComponent]
        internal class ServiceImplementation : IServiceInterface {}

        internal interface IServiceInterface {}
    }
}