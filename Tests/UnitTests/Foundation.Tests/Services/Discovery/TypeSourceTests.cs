using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using Foundation.Services.Discovery;
using Moq;
using NUnit.Framework;

namespace Foundation.Tests.Services.Discovery
{
    [TestFixture]
    public class TypeSourceTests
    {
        [Test]
        public void Discovers_types_directly_or_implicitly()
        {
            var assemblies = new List<Assembly> {GetType().Assembly};
            var assemblySource = new Mock<IAssemblySource>();
            assemblySource.SetupGet(source => source.Assemblies).Returns(assemblies);

            var typeSource = new TypeSource(assemblySource.Object);

            var results = typeSource
                .Implementing<ITestTypeDiscoveryInterface>()
                .ToList();

            Assert.AreEqual(2, results.Count);
            Assert.IsTrue(typeof(ITestTypeDiscoveryInterface).IsAssignableFrom(results.First()));
            Assert.IsTrue(typeof(ITestTypeDiscoveryInterface).IsAssignableFrom(results.Last()));
        }

        [Test]
        public void Discovered_expected_number_of_types()
        {
            var assemblies = new List<Assembly> {GetType().Assembly};
            var assemblySource = new Mock<IAssemblySource>();
            assemblySource.SetupGet(source => source.Assemblies).Returns(assemblies);

            var typeSource = new TypeSource(assemblySource.Object);

            var expectedCount = GetType().Assembly.GetTypes().Where(type => !type.IsAbstract).Count();

            var count = typeSource
                .AllTypes()
                .Count();

            Assert.AreNotEqual(0, count);
            Assert.AreEqual(expectedCount, count);
        }

        [Test]
        public void Can_pass_desired_type_instead_of_using_generics()
        {
            var assemblies = new List<Assembly> { GetType().Assembly };
            var assemblySource = new Mock<IAssemblySource>();
            assemblySource.SetupGet(source => source.Assemblies).Returns(assemblies);

            var typeSource = new TypeSource(assemblySource.Object);

            var results = typeSource
                .Implementing(typeof(ITestTypeDiscoveryInterface))
                .ToList();

            Assert.AreEqual(2, results.Count);
            Assert.IsTrue(typeof(ITestTypeDiscoveryInterface).IsAssignableFrom(results.First()));
            Assert.IsTrue(typeof(ITestTypeDiscoveryInterface).IsAssignableFrom(results.Last()));
        }

        public interface ITestTypeDiscoveryInterface { }

        public class TestTypeDiscoveryImplementation : ITestTypeDiscoveryInterface { }

        class AnotherTestTypeDiscoveryImplementation : TestTypeDiscoveryImplementation { }
    }
}


