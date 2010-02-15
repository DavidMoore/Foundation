using Foundation.WindowsShell;
using NUnit.Framework;

namespace Foundation.Tests.WindowsShell
{
    [TestFixture]
    public class ShellObjectCollectionFixture
    {
        [Test]
        public void Can_get_mycomputer_nodes()
        {
            var provider = new ShellProvider();

            var list = provider.MyComputer.Children;

            Assert.Greater(list.Count, 0);
        }
    }
}