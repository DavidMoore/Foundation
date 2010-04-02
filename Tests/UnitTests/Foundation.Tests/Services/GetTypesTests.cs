using Foundation.Services;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services
{
    [TestClass]
    public class GetTypesTests
    {
        [TestMethod]
        public void OfType()
        {
            var types = GetTypes.OfType(typeof(GetTypes), typeof(GetTypes).Assembly);
            Assert.AreEqual(1, types.Count);
        }

        [TestMethod]
        public void ThatImplement()
        {
            var types = GetTypes.ThatImplement(typeof(IBogusInterface), GetType().Assembly);
            Assert.AreEqual(1, types.Count);
        }

        [TestMethod]
        public void ThatImplement_AllAssemblies()
        {
            var types = GetTypes.ThatImplement(typeof(IBogusInterface), GetType().Assembly, true);
            Assert.AreEqual(1, types.Count);
        }
    }

    public class BogusClass : IBogusInterface {}

    public interface IBogusInterface {}
}