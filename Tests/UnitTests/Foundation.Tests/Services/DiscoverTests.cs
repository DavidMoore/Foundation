using System;
using System.IO;
using System.Linq;
using Foundation.Services.Discovery;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services
{
    [TestClass]
    public class DiscoverTests
    {
        [TestMethod, ExpectedException(typeof(ArgumentNullException))]
        public void ArgumentNullException_if_DirectoryInfo_is_null()
        {
            DiscoverTypes.FromDirectory((DirectoryInfo)null);
        }

        [TestMethod, ExpectedException(typeof(ArgumentNullException))]
        public void ArgumentNullException_if_Directory_string_is_null()
        {
            DiscoverTypes.FromDirectory((string)null);
        }

        [TestMethod, ExpectedException(typeof(ArgumentException))]
        public void ArgumentException_if_Directory_string_is_empty()
        {
            DiscoverTypes.FromDirectory("  ");
        }

        [TestMethod]
        public void Discovers_2_implementing_classes()
        {
            var results = DiscoverTypes
                .FromDirectory(Path.GetDirectoryName(GetType().Assembly.Location))
                .Implementing<IDiscoveryInterface>();

            Assert.AreEqual(2, results.Count());
            Assert.IsNotNull(results.SingleOrDefault(type => type.Equals(typeof(ImplementingClass1))));
            Assert.IsNotNull(results.SingleOrDefault(type => type.Equals(typeof(ImplementingClass2))));
        }
    }

    public interface IDiscoveryInterface {}

    public class ImplementingClass1 : IDiscoveryInterface {}

    public class ImplementingClass2 : ImplementingClass1 {}
}


