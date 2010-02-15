using System;
using System.IO;
using System.Linq;
using Foundation.Services.Discovery;
using NUnit.Framework;

namespace Foundation.Tests.Services
{
    [TestFixture]
    public class DiscoverTests
    {
        [Test, ExpectedException(typeof(ArgumentNullException))]
        public void ArgumentNullException_if_DirectoryInfo_is_null()
        {
            DiscoverTypes.FromDirectory((DirectoryInfo)null);
        }

        [Test, ExpectedException(typeof(ArgumentNullException))]
        public void ArgumentNullException_if_Directory_string_is_null()
        {
            DiscoverTypes.FromDirectory((string)null);
        }

        [Test, ExpectedException(typeof(ArgumentException))]
        public void ArgumentException_if_Directory_string_is_empty()
        {
            DiscoverTypes.FromDirectory("  ");
        }

        [Test]
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


