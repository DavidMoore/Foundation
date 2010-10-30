using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Foundation.Build.MSBuild;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build.MSBuild
{
    [TestClass]
    public class VisualCResourceFileTests
    {
        [TestMethod]
        public void Regex()
        {
            var regex = VisualCResourceFile.ValueRegex;

            Assert.IsTrue(regex.IsMatch(@"VALUE ""Comments"", ""Build: 1\0"""));
            Assert.IsTrue(regex.IsMatch(@"  VALUE ""Comments""  ,""Build: 1\0""  "));
            Assert.IsTrue(regex.IsMatch(@"   VALUE   ""Comments"",       ""Build: 1\0"""));
            Assert.IsFalse(regex.IsMatch(@"VALUE Comments, ""Build: 1\0"""));
        }
    }
}
