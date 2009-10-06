using Foundation.Services;
using NUnit.Framework;

namespace Foundation.Tests.Services
{
    [TestFixture]
    public class GetTypesTests
    {
        [Test]
        public void OfType()
        {
            var types = GetTypes.OfType(typeof(GetTypes), typeof(GetTypes).Assembly);
            Assert.AreEqual(1, types.Count);
        }

        [Test]
        public void ThatImplement()
        {
            var types = GetTypes.ThatImplement(typeof(IBogusInterface), GetType().Assembly);
            Assert.AreEqual(1, types.Count);
        }

        [Test]
        public void ThatImplement_AllAssemblies()
        {
            var types = GetTypes.ThatImplement(typeof(IBogusInterface), GetType().Assembly, true);
            Assert.AreEqual(1, types.Count);
        }
    }

    public class BogusClass : IBogusInterface {}

    public interface IBogusInterface {}
}