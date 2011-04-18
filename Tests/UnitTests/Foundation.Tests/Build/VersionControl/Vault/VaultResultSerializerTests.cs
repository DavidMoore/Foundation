using Foundation.Build.VersionControl.Vault;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build.VersionControl.Vault
{
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

            Assert.AreEqual("EditFile.cs", result.Folder.Files[1].Name);
            Assert.AreEqual(10, result.Folder.Files[1].Version);
            Assert.AreEqual(4121, result.Folder.Files[1].Length);
            Assert.AreEqual(343367, result.Folder.Files[1].ObjectId);
            Assert.AreEqual(1068679, result.Folder.Files[1].ObjectVersionId);
            Assert.AreEqual(VaultFileStatus.Edited, result.Folder.Files[1].Status);

            Assert.AreEqual("OldFile.cs", result.Folder.Files[2].Name);
            Assert.AreEqual(2, result.Folder.Files[2].Version);
            Assert.AreEqual(934, result.Folder.Files[2].Length);
            Assert.AreEqual(343877, result.Folder.Files[2].ObjectId);
            Assert.AreEqual(1049317, result.Folder.Files[2].ObjectVersionId);
            Assert.AreEqual(VaultFileStatus.Old, result.Folder.Files[2].Status);
        }
    }
}