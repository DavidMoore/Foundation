using System;
using System.Collections;
using System.Reflection;
using System.Text;
using System.Linq;
using Foundation.Services.Discovery;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services.Discovery
{
    [TestClass]
    public class AssemblySourceTests
    {
        [TestMethod]
        public void Assemblies()
        {
            var executingAssembly = Assembly.GetExecutingAssembly();

            IAssemblySource source = new AssemblySource(executingAssembly);

            var assemblies = source.Assemblies.ToList();

            Assert.AreEqual(1, assemblies.Count);
            Assert.AreEqual(executingAssembly, assemblies[0]);
        }

        public interface ITestAssemblySourceInterface{}

        public class TestAssemblySource : ITestAssemblySourceInterface {}
    }
}
