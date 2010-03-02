using Foundation.Services;
using Foundation.Services.Registration;
using NUnit.Framework;

namespace Foundation.Tests.Services.Registration
{
    [TestFixture]
    public class RegisterComponentTests
    {
        [Test]
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