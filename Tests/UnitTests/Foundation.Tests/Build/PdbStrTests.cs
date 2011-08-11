using Foundation.Build;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build
{
    [TestClass]
    public class PdbStrTests
    {
        [TestMethod]
        public void Defaults_to_read()
        {
            var pdbStr = new PdbStr();

            Assert.AreEqual(PdbStrOperation.Read, pdbStr.Operation);
        }

        [TestMethod]
        public void BuildArguments_write()
        {
            var pdbStr = new PdbStr();
            pdbStr.BuildArguments();
            Assert.AreEqual("-r", pdbStr.StartInfo.Arguments);
        }

        [TestMethod]
        public void PdbFilename()
        {
            var pdbStr = new PdbStr();
            pdbStr.PdbFileName = @"C:\FileName.pdb";
            pdbStr.BuildArguments();
            Assert.AreEqual("-r -p:\"C:\\FileName.pdb\"", pdbStr.StartInfo.Arguments);
        }

        [TestMethod]
        public void StreamFilename()
        {
            var pdbStr = new PdbStr();
            pdbStr.StreamFileName = @"C:\FileName.txt";
            pdbStr.BuildArguments();
            Assert.AreEqual("-r -i:\"C:\\FileName.txt\"", pdbStr.StartInfo.Arguments);
        }

        [TestMethod]
        public void StreamName()
        {
            var pdbStr = new PdbStr();
            pdbStr.StreamName = @"StreamName";
            pdbStr.BuildArguments();
            Assert.AreEqual("-r -s:StreamName", pdbStr.StartInfo.Arguments);
        }
    }
}
