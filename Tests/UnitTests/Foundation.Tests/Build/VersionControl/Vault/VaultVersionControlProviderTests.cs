using System.Diagnostics;
using System.Net;
using Foundation.Build.VersionControl;
using Foundation.Build.VersionControl.Vault;
using Foundation.Services;
using Foundation.Windows;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

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

            Assert.AreEqual("getversion -host \"Server:Port\" -user \"Username\" -password \"Password\" -repository \"ProjectName\" 50 \"$SourcePath\" \"DestinationPath\"", result);
        }

        [TestMethod]
        public void OperationToVaultCommand()
        {
            Assert.AreEqual("getversion", VaultVersionControlProvider.OperationToVaultCommand(new VersionControlArguments
            {
                Operation = VersionControlOperation.Get
            }));
            
            Assert.AreEqual("getlabel", VaultVersionControlProvider.OperationToVaultCommand(new VersionControlArguments
            {
                Operation = VersionControlOperation.Get,
                Label = "Label"
            }));
        }

        [TestMethod]
        public void GetLocalVersionCommandLine()
        {
            var provider = new VaultVersionControlProvider(@"C:\Program Files\SourceGear\Vault Client\vault.exe");

            var args = new VersionControlArguments
            {
                Credentials = new NetworkCredential("Username", "Password"),
                Operation = VersionControlOperation.GetLocalVersion,
                Project = "ProjectName",
                Provider = "Vault",
                Server = "Server:Port",
                SourcePath = "SourcePath\\FileName.ext"
            };

            var result = provider.BuildCommandLineArguments(args);

            Assert.AreEqual("listfolder -host \"Server:Port\" -user \"Username\" -password \"Password\" -repository \"ProjectName\" \"$SourcePath\"", result);
        }

        [TestMethod]
        public void GetLocalVersion()
        {
            var provider = new VaultVersionControlProvider(@"C:\Program Files\SourceGear\Vault Client\vault.exe");

            var args = new VersionControlArguments
            {
                Credentials = new NetworkCredential("Username", "Password"),
                Operation = VersionControlOperation.GetLocalVersion,
                Project = "ProjectName",
                Provider = "Vault",
                Server = "Server:Port",
                SourcePath = "SourcePath\\UnchangedFile.cs"
            };

            var process = new Mock<IProcessResult>();
            process.Setup(process1 => process1.StandardOutput).Returns(VaultTestResponses.ListFolderResponse);

            var result = provider.ParseResult(args, process.Object);

            Assert.AreEqual(ServiceResultCode.Success, result.ResultCode);
            Assert.AreEqual(6, result.ResultValue);
        }

        [TestMethod]
        public void Get_for_label()
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
                SourcePath = "/SourcePath/FileName.ext",
                Label = "My Label"
            };

            var result = provider.BuildCommandLineArguments(args);

            Assert.AreEqual("getlabel -host \"Server:Port\" -user \"Username\" -password \"Password\" -repository \"ProjectName\" -destpath \"DestinationPath\" \"$SourcePath/FileName.ext\" \"My Label\"", result);
        }

        [TestMethod]
        public void MapVersionControlSourcePath()
        {
            var provider = new VaultVersionControlProvider(@"C:\Program Files\SourceGear\Vault Client\vault.exe");

            var args = new VersionControlArguments
            {
                Credentials = new NetworkCredential("Username", "Password"),
                DestinationPath = "C:\\WorkingFolder",
                Operation = VersionControlOperation.Get,
                Project = "ProjectName",
                Provider = "Vault",
                Server = "Server:Port",
                SourcePath = "SourcePath\\FileName.ext",
                Label = "My Label"
            };

            Assert.IsNull(provider.MapVersionControlSourcePath("D:\\WorkingFolder", args));
            Assert.AreEqual("/Folder/File.ext", provider.MapVersionControlSourcePath(@"C:\WorkingFolder\Folder\File.ext", args));
            Assert.AreEqual("/Folder/File.ext", provider.MapVersionControlSourcePath(@"C:\workingFolder/Folder\File.ext", args));
        }
    }
}