using System.Linq;
using Foundation.Build.MSBuild;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build.MSBuild
{
    [TestClass]
    public class VisualBasicProjectTests
    {
        private const string visualBasicProjectLines = @"Type=Exe
Reference=*\G{198B1AD5-89DD-4074-8033-7FC78B46C74F}#3.b#0#..\..\..\..\..\SubFolder\ExeReference.exe#ExeReferenceName
Reference=*\G{198B1AD5-89DD-4074-8033-7FC78B46C74F}#3.b#0#..\..\..\..\..\SubFolder\DllReference.dll#DllReferenceName
Object={F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0; ComDlg32.ocx
Object={831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0; MSCOMCTL.OCX
Form=frmForm.frm
Module=modModule; modModule.bas";

        [TestMethod]
        public void GetFileNameFromReference()
        {
            Assert.AreEqual("stdole2.tlb", VisualBasicProject.GetFileNameFromReference(@"*\G{00020430-0000-0000-C000-000000000046}#2.0#0#..\..\..\..\..\..\..\Windows\SysWOW64\stdole2.tlb#OLE Automation"));
            Assert.AreEqual("dbgwproc.dll", VisualBasicProject.GetFileNameFromReference(@"*\G{3D0758FA-4171-11D0-A747-00A0C91110C3}#a.0#0#dbgwproc.dll#Debug Object for AddressOf Subclassing"));
            Assert.AreEqual("DPDEVICE.DLL", VisualBasicProject.GetFileNameFromReference(@"*\G{AAAE3FBC-3DCA-11D2-B50B-00A024C9FA1C}#1.4#0#..\..\..\WINDOWS\system32\DPDEVICE.DLL#Dictaphone Device Object Library"));
            Assert.AreEqual("MSCOMM32.OCX", VisualBasicProject.GetFileNameFromReference(@"Object={648A5603-2C6E-101B-82B6-000000000014}#1.1#0; MSCOMM32.OCX"));
        }

        [TestMethod]
        public void HarvestReferenceFilenames()
        {
            var filenames = VisualBasicProject.HarvestReferences(visualBasicProjectLines);
            Assert.IsNotNull(filenames);
            Assert.AreEqual(2, filenames.Count());
            Assert.AreEqual("ExeReference.exe", filenames.First());
            Assert.AreEqual("DllReference.dll", filenames.Skip(1).First());
        }

        [TestMethod]
        public void HarvestComponentFilenames()
        {
            var filenames = VisualBasicProject.HarvestComponents(visualBasicProjectLines);
            Assert.IsNotNull(filenames);
            Assert.AreEqual(2, filenames.Count());
            Assert.AreEqual("ComDlg32.ocx", filenames.First());
            Assert.AreEqual("MSCOMCTL.OCX", filenames.Skip(1).First());
        }
    }
}
