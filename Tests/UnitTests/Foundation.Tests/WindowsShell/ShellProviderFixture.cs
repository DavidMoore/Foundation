using System;
using System.Collections.Generic;
using System.Linq;
using Foundation.WindowsShell;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.WindowsShell
{
    [TestClass]
    public class ShellProviderFixture
    {
        [TestInitialize]
        public void Initialize()
        {
            provider = new ShellProvider();
        }

        [TestCleanup]
        public void Cleanup()
        {
            provider.Dispose();
        }

        ShellProvider provider;

        [TestMethod]
        public void Can_get_mycomputer_node_by_namespace()
        {
            ShellItem myComputer = provider.GetShellFolder(ShellNamespaceIdentifier.MyComputer);
            Assert.IsTrue(myComputer.Name.EndsWith("Computer")); // XP: My Computer. Vista, Win 2k8 etc: Computer.
        }

        [TestMethod]
        public void Can_get_mycomputer_node_by_namespace_string()
        {
            ShellItem myComputer = provider.GetShellFolder("::{20D04FE0-3AEA-1069-A2D8-08002B30309D}");
            Assert.IsTrue(myComputer.Name.EndsWith("Computer"));
        }

        [TestMethod]
        public void Can_get_MyComputer_node_by_property()
        {
            Assert.IsTrue(provider.MyComputer.Name.EndsWith("Computer"));
        }

        [TestMethod]
        public void MyComputer_contains_system_logical_drives()
        {
            var drives = new List<string>(Environment.GetLogicalDrives());

            var myComputer = provider.MyComputer;
            var list = myComputer.Children;

            drives.ForEach(drive => Assert.IsNotNull(list.SingleOrDefault(obj => obj.Path.Equals(drive))));
        }
    }
}