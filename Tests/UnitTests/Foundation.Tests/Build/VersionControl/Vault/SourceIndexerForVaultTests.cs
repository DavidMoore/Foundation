using System.Net;
using Foundation.Build;
using Foundation.Build.VersionControl;
using Foundation.Build.VersionControl.Vault;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build.VersionControl.Vault
{
    [TestClass]
    public class SourceIndexerForVaultTests
    {
        [TestMethod]
        public void GetVersionCommandForFile()
        {
            var provider = new VaultVersionControlProvider("%VCS_EXECUTABLE%");

            var args = new VersionControlArguments
            {
                Credentials = new NetworkCredential("Username", "Password"),
                DestinationPath = @"D:\Source",
                Project = "ProjectName",
                Provider = "Vault",
                Server = "Server:Port",
                SourcePath = "$/SourcePath",
                Label = "My Label"
            };
            var indexer = new SourceIndexer(provider, args);
            
            var command = indexer.GetVersionCommand();

            Assert.AreEqual("\"%VCS_EXECUTABLE%\" getlabel -host \"%VCS_SERVER%\" -user \"%VCS_USERNAME%\" -password \"%VCS_PASSWORD%\" -repository \"%VCS_PROJECT%\" -destpath \"%TARG%\\%VAR3%%fnbksl%(%VAR2%)\" \"$%VAR2%/%fnfile%(%VAR1%)\" \"%VAR3%\"", command, ignoreCase: true);            
        }

        [TestMethod]
        public void GetSourceIndexForFile()
        {
            var provider = new VaultVersionControlProvider("%VCS_EXECUTABLE%");

            var args = new VersionControlArguments
            {
                Credentials = new NetworkCredential("Username", "Password"),
                DestinationPath = @"D:\Source\",
                Project = "ProjectName",
                Provider = "Vault",
                Server = "Server:Port",
                SourcePath = "$/ProjectName/SourcePath",
                Label = "My Label"
            };
            var indexer = new SourceIndexer(provider, args);
            
            Assert.AreEqual(@"D:\Source\ProjectName\SourcePath\File.ext*/ProjectName/SourcePath*My Label", indexer.GetVersionIndexForFile(@"d:\Source\ProjectName\SourcePath\File.ext"), ignoreCase: true);
            Assert.AreEqual(@"D:\Source\ProjectName\SourcePath\File.ext*/ProjectName/SourcePath*My Label", indexer.GetVersionIndexForFile(@"D:\Source\ProjectName\SourcePath\File.ext"), ignoreCase: true);
        }
    }
}
