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
            var uri = new Uri("vault://username:password@ServerName/ProjectName?DestinationPath=C:\\Destination\\Path&label=My Label");

            var result = VersionControlArgumentsConverter.FromUri(uri);

            Assert.IsNotNull(result);
            Assert.AreEqual("vault", result.Provider);
            Assert.AreEqual("username", result.Credentials.UserName);
            Assert.AreEqual("password", result.Credentials.Password);
            Assert.AreEqual("servername", result.Server);
            Assert.AreEqual("ProjectName", result.Project);
            Assert.AreEqual(VersionControlOperation.None, result.Operation);
            Assert.AreEqual("C:\\Destination\\Path", result.DestinationPath);
            Assert.AreEqual("My Label", result.Label);
            Assert.IsNull(result.SourcePath);
            Assert.IsNull(result.Version);
        }

        [TestMethod]
        public void FromUri_unescapes_Project()
        {
            var uri = new Uri("vault://username:password@ServerName/Project%20Name?DestinationPath=C:\\Destination\\Path&label=My Label");

            var result = VersionControlArgumentsConverter.FromUri(uri);

            Assert.IsNotNull(result);
            Assert.AreEqual("Project Name", result.Project);
        }

        [TestMethod]
        public void FromUri_trims_whitespace_and_slashes_on_Project()
        {
            var uri = new Uri("vault://username:password@ServerName/Project%20Name//?DestinationPath=C:\\Destination\\Path&label=My Label");

            var result = VersionControlArgumentsConverter.FromUri(uri);

            Assert.IsNotNull(result);
            Assert.AreEqual("Project Name", result.Project);
        }
    }
}
