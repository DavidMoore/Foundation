using Foundation.Windows.Shell;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Windows.Shell
{
    [TestClass]
    public class ShellObjectCollectionFixture
    {
        [TestMethod]
        public void Can_get_mycomputer_nodes()
        {
            using (var provider = new ShellProvider())
            {
                var list = provider.MyComputer.Children;
                Assert.IsTrue(list.Count > 0);
            }
        }
    }
}