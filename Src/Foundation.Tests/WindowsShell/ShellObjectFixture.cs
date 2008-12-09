using Foundation.WindowsShell;
using NUnit.Framework;
using Shell32;

namespace Foundation.Tests.WindowsShell
{
    [TestFixture]
    public class ShellObjectFixture
    {
        readonly Shell shell = new Shell();

        public void Detects_if_it_is_a_folder()
        {
            var folder = (Folder3) shell.NameSpace(ShellNamespaceIdentifier.Desktop);
            var desktop = new ShellFolder(folder);
            Assert.IsTrue(desktop.IsFolder);
        }

        [Test]
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