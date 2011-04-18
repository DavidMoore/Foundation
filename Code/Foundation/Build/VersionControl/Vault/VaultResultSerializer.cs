using System;
using System.Linq;
using System.Xml.Linq;
using Foundation.ExtensionMethods;

namespace Foundation.Build.VersionControl.Vault
{
    public class VaultResultSerializer
    {
        public VaultResult Deserialize(string response)
        {
            var root = XDocument.Parse(response).Root;

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

                EnumerableExtensions.ForEach<VaultFile>(files.Select(ParseVaultFile), result.Folder.Files.Add);
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
}