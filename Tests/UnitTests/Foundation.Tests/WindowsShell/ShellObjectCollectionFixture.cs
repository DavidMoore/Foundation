using Foundation.WindowsShell;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.WindowsShell
{
    [TestClass]
    public class ShellObjectCollectionFixture
    {
        [TestMethod]
        public void Can_get_mycomputer_nodes()
        {
            var provider = new ShellProvider();

            var list = provider.MyComputer.Children;

            Assert.IsTrue(list.Count > 0);
        }
    }
}