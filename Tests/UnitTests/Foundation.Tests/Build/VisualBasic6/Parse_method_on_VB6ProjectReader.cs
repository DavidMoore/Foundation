using System.IO;
using System.Reflection;
using Foundation.Build.VisualBasic6;
using Foundation.ExtensionMethods;
using Foundation.Tests.TestHelpers;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build.VisualBasic6
{
    [TestClass]
    public class Parse_method_on_VB6ProjectReader
    {
        private FileInfo tempFile;
        private VB6ProjectReader reader;

        [TestInitialize]
        public void Initialize()
        {
            tempFile = new FileInfo(Path.GetTempFileName());
            tempFile.WriteEmbeddedResourceToFile("Project.vbp");
            reader = new VB6ProjectReader();
        }

        [TestCleanup]
        public void Cleanup()
        {
            tempFile.Refresh();
            if (tempFile.Exists) tempFile.Delete();
        }

        [TestMethod]
        public void Returns_VB6Project_object()
        {
            VB6Project project = reader.Parse(tempFile.FullName);
            Assert.IsNotNull(project);
        }
    }
}
