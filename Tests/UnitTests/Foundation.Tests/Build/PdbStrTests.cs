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
            pdbStr.PdbFilename = @"C:\Filename.pdb";
            pdbStr.BuildArguments();
            Assert.AreEqual("-r -p:\"C:\\Filename.pdb\"", pdbStr.StartInfo.Arguments);
        }

        [TestMethod]
        public void StreamFilename()
        {
            var pdbStr = new PdbStr();
            pdbStr.StreamFilename = @"C:\Filename.txt";
            pdbStr.BuildArguments();
            Assert.AreEqual("-r -i:\"C:\\Filename.txt\"", pdbStr.StartInfo.Arguments);
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
