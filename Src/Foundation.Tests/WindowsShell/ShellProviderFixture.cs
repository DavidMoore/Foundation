using System;
using System.Collections.Generic;
using Foundation.WindowsShell;
using NUnit.Framework;

namespace Foundation.Tests.WindowsShell
{
    [TestFixture]
    public class ShellProviderFixture
    {
        private readonly ShellProvider provider = new ShellProvider();

        [Test]
        public void Can_get_mycomputer_node_by_namespace()
        {
            ShellItem myComputer = provider.GetShellFolderByPath(ShellNamespaceIdentifier.MyComputer);
            Assert.AreEqual("My Computer", myComputer.Name);
        }

        [Test]
        public void Can_get_mycomputer_node_by_namespace_string()
        {
            ShellItem myComputer = provider.GetShellFolderByPath("::{20D04FE0-3AEA-1069-A2D8-08002B30309D}");
            Assert.AreEqual("My Computer", myComputer.Name);
        }

        [Test]
        public void Can_get_MyComputer_node_by_property()
        {
            Assert.AreEqual("My Computer", provider.MyComputer.Name);
        }

        [Test]
        public void MyComputer_contains_system_logical_drives()
        {
            var drives = new List<string>(Environment.GetLogicalDrives());

            ShellFolder myComputer = provider.MyComputer;
            ShellItemList list = myComputer.Children;

            drives.ForEach(drive => Assert.IsNotNull(list.Find(obj => obj.Path.Equals(drive))));
        }
    }
}