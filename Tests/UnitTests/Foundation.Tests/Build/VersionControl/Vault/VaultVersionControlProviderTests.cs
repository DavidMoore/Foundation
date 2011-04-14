using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.Xml.Linq;
using Foundation.Build.VersionControl;
using Foundation.Build.VersionControl.Vault;
using Foundation.ExtensionMethods;
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

    [TestClass]
    public class VaultResultSerializerTests
    {
        [TestMethod]
        public void Result()
        {
            var serializer = new VaultResultSerializer();

            var result = serializer.Deserialize(VaultTestResponses.ListFolderResponse);

            Assert.IsNotNull(result);
            Assert.IsTrue(result.Success);
        }

        [TestMethod]
        public void Folder()
        {
            var serializer = new VaultResultSerializer();

            var result = serializer.Deserialize(VaultTestResponses.ListFolderResponse);

            Assert.IsNotNull(result);
            Assert.IsTrue(result.Success);
            Assert.IsNotNull(result.Folder);
            Assert.IsNotNull(result.Folder.Files);
            Assert.AreEqual(3, result.Folder.Files.Count);

            Assert.AreEqual("UnchangedFile.cs", result.Folder.Files[0].Name);
            Assert.AreEqual(6, result.Folder.Files[0].Version);
            Assert.AreEqual(4159, result.Folder.Files[0].Length);
            Assert.AreEqual(343368, result.Folder.Files[0].ObjectId);
            Assert.AreEqual(1068698, result.Folder.Files[0].ObjectVersionId);
            Assert.AreEqual(VaultFileStatus.None, result.Folder.Files[0].Status);
        }
    }

    public static class VaultTestResponses
    {
        internal const string ListFolderResponse = @"<vault>
  <folder name=""$/ProjectName/Source/Folder"" workingfolder=""D:\Projects\ProjectName\Destination\Folder"">
   <file name=""UnchangedFile.cs"" version=""6"" length=""4159"" objectid=""343368"" objectversionid=""1068698"" />
   <file name=""EditFile.cs"" version=""10"" length=""4121"" objectid=""343367"" objectversionid=""1068679"" status=""Edited"" />
   <file name=""OldFile.cs"" version=""2"" length=""934"" objectid=""343877"" objectversionid=""1049317"" status=""Old"" />
  </folder>
  <result success=""yes"" />
</vault>";
    }

    public class VaultResultSerializer
    {
        public VaultResult Deserialize(string response)
        {
            var root = XDocument.Parse(VaultTestResponses.ListFolderResponse).Root;

            if( root == null ) throw new VaultException("Couldn't get root element from vault response");

            // Result
            var resultNode = root.Element("result");
            if( resultNode == null ) throw new VaultException("Couldn't get result node from Vault response");

            var successAttribute = resultNode.Attribute("success");
            if( successAttribute == null ) throw new VaultException("Couldn't get success attribute on result node from Vault response");

            var result = new VaultResult();

            result.Success = !successAttribute.Value.Equals("no", StringComparison.CurrentCultureIgnoreCase);

            // Folder
            var node = root.Element("folder");
            if (node != null)
            {
                result.Folder = new VaultFolder(node.Attribute("name").Value);

                // Working folder
                var workingFolder = node.Attribute("workingfolder");
                if (workingFolder != null) result.Folder.WorkingFolder = workingFolder.Value;

                // Folder files
                var files = node.Elements("file");

                files.Select(ParseVaultFile).ForEach(result.Folder.Files.Add);
            }

            return result;
        }

        internal VaultFile ParseVaultFile(XElement node)
        {
            var file = new VaultFile();

            file.Length = long.Parse(node.Attribute("length").Value);
            file.Name = node.Attribute("name").Value;
            file.ObjectId = long.Parse(node.Attribute("objectid").Value);
            file.ObjectVersionId = long.Parse(node.Attribute("objectversionid").Value);

            var status = node.Attribute("status");

            if( status != null)
            {
                file.Status = (VaultFileStatus)Enum.Parse(typeof(VaultFileStatus), status.Value);
            }

            file.Version = int.Parse(node.Attribute("version").Value);

            return file;
        }
    }

    public class VaultException : BaseException
    {
        public VaultException() {}
        public VaultException(string message) : base(message) {}
        public VaultException(string message, params object[] args) : base(message, args) {}
        public VaultException(Exception innerException, string message, params object[] args) : base(innerException, message, args) {}
        public VaultException(string message, Exception innerException) : base(message, innerException) {}
        protected VaultException(SerializationInfo info, StreamingContext context) : base(info, context) {}
    }

    public class VaultResult
    {
        /// <summary>
        /// Gets or sets a value indicating whether the vault request was a success.
        /// </summary>
        /// <value>
        ///   <c>true</c> if the vault request was successful; otherwise, <c>false</c>.
        /// </value>
        public bool Success { get; set; }

        public VaultFolder Folder { get; set; }
    }

    public class VaultFolder
    {
        public VaultFolder(string name)
        {
            Name = name;
            Files = new List<VaultFile>();
        }

        public string Name { get; set; }

        public string WorkingFolder { get; set; }

        public IList<VaultFile> Files { get; set; }
    }

    public class VaultFile
    {
        public string Name { get; set; }

        public int Version { get; set; }

        public long Length { get; set; }

        public VaultFileStatus Status { get; set; }

        public long ObjectId { get; set; }

        public long ObjectVersionId { get; set; }
    }

    public enum VaultFileStatus
    {
        None = 0,
        Edited = 1,
        Old = 2,
        Unknown = 3
    }
}
