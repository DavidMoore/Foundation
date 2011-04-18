using System;
using System.Net;
using Foundation.Build.VersionControl;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build.VersionControl
{
    [TestClass]
    public class VersionControlArgumentsConverterTests
    {
        [TestMethod]
        public void FromUri()
        {
            var args = new VersionControlArguments
            {
                Credentials = new NetworkCredential("username", "password"),
                DestinationPath = "destination",
                Operation = VersionControlOperation.Get,
                Project = "ProjectName",
                Server = "ServerName",
                SourcePath = "Source/Path/",
                Version = "50",
                Provider = "Vault"
            };

            var uri = new Uri("vault://username:password@ServerName/ProjectName");

            var result = VersionControlArgumentsConverter.FromUri(uri);

            Assert.IsNotNull(result);
            Assert.AreEqual("vault", result.Provider);
            Assert.AreEqual("username", result.Credentials.UserName);
            Assert.AreEqual("password", result.Credentials.Password);
            Assert.AreEqual("servername", result.Server);
            Assert.AreEqual("ProjectName", result.Project);
            Assert.AreEqual(VersionControlOperation.None, result.Operation);
            Assert.IsNull(result.DestinationPath);
            Assert.IsNull(result.SourcePath);
            Assert.IsNull(result.Version);
        }
    }
}
