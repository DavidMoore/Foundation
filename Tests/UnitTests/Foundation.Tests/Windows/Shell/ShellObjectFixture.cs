using Foundation.Windows.Shell;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Shell32;

namespace Foundation.Tests.Windows.Shell
{
    [TestClass]
    public class ShellObjectFixture
    {
        readonly Shell32.Shell shell = new Shell32.Shell();

        public void Detects_if_it_is_a_folder()
        {
            var folder = (Folder3) shell.NameSpace(ShellNamespaceIdentifier.Desktop);
            var desktop = new ShellFolder(folder);
            Assert.IsTrue(desktop.IsFolder);
        }

        [TestMethod]
        public void Can_get_Desktop_node()
        {
            var folder = (Folder3) shell.NameSpace(ShellNamespaceIdentifier.Desktop);
            var desktop = new ShellFolder(folder);
            var children = desktop.Children;
            Assert.IsTrue(desktop.IsFolder);
            Assert.AreEqual("Desktop", desktop.Name);
        }
    }
}