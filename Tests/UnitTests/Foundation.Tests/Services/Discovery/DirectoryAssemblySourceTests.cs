using System;
using System.IO;
using System.Linq;
using Foundation.Services.Discovery;
using NUnit.Framework;

namespace Foundation.Tests.Services.Discovery
{
    [TestFixture]
    public class DirectoryAssemblySourceTests
    {
        readonly string bogusDirectoryPath = string.Concat(@"x:\Path_should_not_exist_", new Guid().ToString());

        [Test, ExpectedException(typeof(ArgumentNullException))]
        public void Throws_ArgumentNullException_if_directory_path_is_null()
        {
            new DirectoryAssemblySource((string)null);
        }

        [Test, ExpectedException(typeof(ArgumentException))]
        public void Throws_ArgumentException_if_directory_path_is_empty()
        {
            new DirectoryAssemblySource("  ");
        }

        [Test, ExpectedException(typeof(DirectoryNotFoundException))]
        public void Throws_DirectoryNotFoundException_if_directory_does_not_exist()
        {
            new DirectoryAssemblySource(bogusDirectoryPath)
                .Assemblies.ToList(); // The check doesn't happen until we try to discover assemblies
        }

        [Test]
        public void Discovers_this_assembly()
        {
            var assembly = GetType().Assembly;

            Assert.IsTrue(new DirectoryAssemblySource(Path.GetDirectoryName(assembly.Location))
                              .Assemblies.Contains(assembly));
        }
    }
}


