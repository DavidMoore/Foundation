using System;
using Foundation.Windows.IO;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Windows.IO
{
    [TestClass]
    public class FileTimeTests
    {
        /// <summary>
        /// 4/04/2011 20:35:11.5283603
        /// </summary>
        const long testTicks = 129463797115283603;
        const int fileTimeHigh = 30143139;
        const int fileTimeLow = 911501459;

        static readonly DateTime testTime = DateTime.FromFileTime(testTicks);
        
        [TestMethod]
        public void ToTicks()
        {
            var time = new FileTime { FileTimeHigh = fileTimeHigh, FileTimeLow = fileTimeLow };
            Assert.AreEqual(testTicks, time.ToTicks());
        }

        [TestMethod]
        public void ToDateTime()
        {
            var time = new FileTime { FileTimeHigh = fileTimeHigh, FileTimeLow = fileTimeLow };
            Assert.AreEqual(testTime, time.ToDateTime());
        }
    }
}
