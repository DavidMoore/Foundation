using Foundation.Services;
using Foundation.Services.Windsor;
using NUnit.Framework;

namespace Foundation.Tests.Services
{
    [TestFixture]
    public class IocFixture
    {
        [Test]
        public void Autoinstantiates_on_access()
        {
            Assert.IsNotNull(Ioc.Container);
        }
    }
}