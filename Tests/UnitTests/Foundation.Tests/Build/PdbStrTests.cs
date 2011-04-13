using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build
{
    [TestClass]
    public class PdbStrTests
    {
        [TestMethod]
        public void Requires_filename()
        {
            var pdbstr = new PdbStr();
        }
    }

    public class PdbStr
    {
        
    }

    [TestClass]
    public class SrcToolTests
    {
        [TestMethod]
        public void ListSourceFiles()
        {
            var srcTool = new SrcTool(); 
        }
    }

    public class SrcTool {}
}
