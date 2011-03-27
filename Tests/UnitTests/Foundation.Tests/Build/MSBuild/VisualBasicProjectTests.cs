using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Foundation.Build.MSBuild;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build.MSBuild
{
    [TestClass]
    public class VisualBasicProjectTests
    {
        [TestMethod]
        public void GetFileNameFromReference()
        {
            Assert.AreEqual("stdole2.tlb", VisualBasicProject.GetFileNameFromReference(@"*\G{00020430-0000-0000-C000-000000000046}#2.0#0#..\..\..\..\..\..\..\Windows\SysWOW64\stdole2.tlb#OLE Automation"));
            Assert.AreEqual("dbgwproc.dll", VisualBasicProject.GetFileNameFromReference(@"*\G{3D0758FA-4171-11D0-A747-00A0C91110C3}#a.0#0#dbgwproc.dll#Debug Object for AddressOf Subclassing"));
            Assert.AreEqual("DPDEVICE.DLL", VisualBasicProject.GetFileNameFromReference(@"*\G{AAAE3FBC-3DCA-11D2-B50B-00A024C9FA1C}#1.4#0#..\..\..\WINDOWS\system32\DPDEVICE.DLL#Dictaphone Device Object Library"));
//Object={F748808D-5300-489C-8DC1-578AA5871056}#1.0#0; USBMicCtrl.dll
//Object={D8F5B61D-9152-4399-BF30-A1E4F3F072F6}#4.0#0; IGTabs40.ocx
//Object={648A5603-2C6E-101B-82B6-000000000014}#1.1#0; MSCOMM32.OCX
//Object={F304A4CF-FB7A-43C4-A860-3F53C550C375}#1.0#0; PSMike.OCX
        }
    }
}
