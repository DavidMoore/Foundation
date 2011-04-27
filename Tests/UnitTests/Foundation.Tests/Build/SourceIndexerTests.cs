using System;
using System.Net;
using Foundation.Build;
using Foundation.Build.VersionControl;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace Foundation.Tests.Build.VersionControl
{
    [TestClass]
    public class SourceIndexerTests
    {
        [TestMethod]
        public void Requires_BaseCommandLineVersionControlProvider_on_constructor()
        {
            var provider = new Mock<BaseCommandLineVersionControlProvider>();
            var indexer = new SourceIndexer(provider.Object, new Mock<VersionControlArguments>().Object);
            Assert.AreEqual(provider.Object, indexer.versionControlProvider);
        }

        [TestMethod]
        public void GetIniBlock()
        {
            var provider = new Mock<BaseCommandLineVersionControlProvider>();
            provider.Setup(controlProvider =>
                controlProvider.BuildCommandLineArguments(It.IsAny<VersionControlArguments>()))
                .Returns("args");

            var args = new VersionControlArguments
            {
                Credentials = new NetworkCredential("username", "password"),
                DestinationPath = "D:\\WorkingFolder\\MyProject",
                Label = "My Label",
                Operation = VersionControlOperation.Get,
                Project = "MyProject",
                Provider = "Provider",
                Server = "server:port",
                SourcePath = "$/MyProject"
            };
            var indexer = new SourceIndexer(provider.Object, args);

            var block = indexer.GetIniBlock();

            var now = DateTime.Now.ToUniversalTime().ToString("u");

            Assert.AreEqual(@"SRCSRV: ini ------------------------------------------------
VERSION=1
VERCTRL=Provider
DATETIME=" + now, block.Trim(), ignoreCase: true);
        }

        [TestMethod]
        public void GetVariableBlock()
        {
            var provider = new Mock<BaseCommandLineVersionControlProvider>();
            provider.Setup(controlProvider => 
                controlProvider.BuildCommandLineArguments(It.IsAny<VersionControlArguments>()))
                .Returns("args");
            provider.SetupGet(vcp => vcp.Filename).Returns("VcsExecutable.exe");

            var args = new VersionControlArguments
            {
                Credentials = new NetworkCredential("username", "password"),
                DestinationPath = "D:\\WorkingFolder\\MyProject",
                Label = "My Label",
                Operation = VersionControlOperation.Get,
                Project = "MyProject",
                Provider = "Vault",
                Server = "server:port",
                SourcePath = "$/MyProject"
            };
            var indexer = new SourceIndexer(provider.Object, args);

            var block = indexer.GetVariableBlock();

            Assert.AreEqual(@"SRCSRV: variables ------------------------------------------
VCS_EXECUTABLE=VcsExecutable.exe
VCS_USERNAME=username
VCS_PASSWORD=password
VCS_SERVER=server:port
VCS_PROJECT=MyProject
SRCSRVTRG=%VCS_EXTRACT_TARGET%
VCS_EXTRACT_CMD=""%VCS_EXECUTABLE%"" args
SRCSRVCMD=%VCS_EXTRACT_CMD%
VCS_EXTRACT_TARGET=" + SourceIndexer.VcsDestinationPath + "\r\n", block, ignoreCase: true);
        }

        [TestMethod]
        public void GetVersionIndexForFile()
        {
            var provider = new Mock<BaseCommandLineVersionControlProvider>();
            provider.Setup(controlProvider =>
                controlProvider.BuildCommandLineArguments(It.IsAny<VersionControlArguments>()))
                .Returns("args");

            provider.Setup(versionControlProvider => versionControlProvider
                .MapVersionControlSourcePath(It.IsAny<string>(), It.IsAny<VersionControlArguments>()))
                .Returns("VersionControlPath");

            var args = new VersionControlArguments
            {
                Credentials = new NetworkCredential("username", "password"),
                DestinationPath = "D:\\WorkingFolder\\MyProject",
                Label = "My Label",
                Operation = VersionControlOperation.Get,
                Project = "MyProject",
                Provider = "Vault",
                Server = "server:port",
                SourcePath = "$/MyProject"
            };

            var indexer = new SourceIndexer(provider.Object, args);
            
            var line = indexer.GetVersionIndexForFile("D:\\WorkingFolder\\MyProject\\SubFolder\\Filename.ext");

            Assert.AreEqual("D:\\WorkingFolder\\MyProject\\SubFolder\\Filename.ext*VersionControlPath*My Label", line, ignoreCase:true);
        }

        
    }
}