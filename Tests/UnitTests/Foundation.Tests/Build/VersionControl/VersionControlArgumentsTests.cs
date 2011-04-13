using System.Net;
using Foundation.Build.VersionControl;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build.VersionControl
{
    [TestClass]
    public class VersionControlArgumentsTests
    {
        [TestMethod]
        public void ToString_converts_arguments_to_uri_string()
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

            Assert.AreEqual("vault://username:password@ServerName/ProjectName/Source/Path/?operation=Get&destination=destination#50", args.ToString());
        }
    }
}
