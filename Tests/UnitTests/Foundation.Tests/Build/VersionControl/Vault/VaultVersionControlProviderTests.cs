using System.Net;
using Foundation.Build.VersionControl;
using Foundation.Build.VersionControl.Vault;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build.VersionControl.Vault
{
    [TestClass]
    public class VaultVersionControlProviderTests
    {
        [TestMethod]
        public void BuildCommandLineArguments_for_get_specific_version()
        {
            var provider = new VaultVersionControlProvider(@"C:\Program Files\SourceGear\Vault Client\vault.exe");

            var args = new VersionControlArguments
            {
                Credentials = new NetworkCredential("Username", "Password"),
                DestinationPath = "DestinationPath",
                Operation = VersionControlOperation.Get,
                Project = "ProjectName",
                Provider = "Vault",
                Server = "Server:Port",
                SourcePath = "SourcePath",
                Version = "50"
            };

            var result = provider.BuildCommandLineArguments(args);

            Assert.AreEqual("getversion -host Server:Port -user Username -password Password -repository \"ProjectName\" 50 \"SourcePath\" \"DestinationPath\"", result);
        }

        [TestMethod]
        public void OperationToVaultCommand()
        {
            Assert.AreEqual("getversion", VaultVersionControlProvider.OperationToVaultCommand(VersionControlOperation.Get));
        }
    }
}