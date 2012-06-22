using System;
using System.Globalization;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

using Foundation.Windows;

using Microsoft.Practices.Prism.Modularity;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Hydra.Modules.ErrorAnalyzer
{
    [TestClass]
    public class ErrorCodeParserTests
    {
        [TestMethod]
        public void Parse_Win32_error_code()
        {
            var parser = new ErrorCodeParser();

            var result = parser.Parse("2");

            Assert.IsNotNull(result);
            Assert.AreEqual(2, result.Value);
            Assert.IsFalse(result.IsHR);
            Assert.AreEqual(-2147024894, result.HR);
            Assert.AreEqual("The system cannot find the file specified.", result.ErrorMessage.Trim());
            Assert.IsTrue( result.Exception is FileNotFoundException);
        }

        [TestMethod]
        public void Parse_long_HRESULT()
        {
            var parser = new ErrorCodeParser();

            var result = parser.Parse("-2147024894");

            Assert.IsNotNull(result);
            Assert.AreEqual(-2147024894, result.Value);
            Assert.IsTrue(result.IsHR);
            Assert.AreEqual(-2147024894, result.HR);
            Assert.AreEqual("The system cannot find the file specified.", result.ErrorMessage.Trim());
            Assert.IsTrue(result.Exception is FileNotFoundException);
        }

        [TestMethod]
        public void Parse_short_hex_HRESULT()
        {
            var parser = new ErrorCodeParser();

            var result = parser.Parse("0x80070002");

            Assert.IsNotNull(result);
            Assert.AreEqual(-2147024894, result.Value);
            Assert.IsTrue(result.IsHR);
            Assert.AreEqual(-2147024894, result.HR);
            Assert.AreEqual("The system cannot find the file specified.", result.ErrorMessage.Trim());
            Assert.IsTrue(result.Exception is FileNotFoundException);
        }
        
        [TestMethod]
        public void IsHex()
        {
            Assert.IsTrue(ErrorCodeParser.IsHexString("0xABC"));
            Assert.IsTrue(ErrorCodeParser.IsHexString("0x000"));
            Assert.IsFalse(ErrorCodeParser.IsHexString("0000"));
        }
    }

    class ErrorCodeParser
    {
        const string hexRegexString = @"^\w*0x([a-fA-F0-9]+)\w*$";
        static readonly Regex hexRegex = new Regex(hexRegexString, RegexOptions.Compiled);

        public ErrorCode Parse(string errorString)
        {
            var errorCode = new ErrorCode();
            if (IsHexString(errorString))
            {
                errorCode.Value = int.Parse(errorString.Substring(2).Trim(), NumberStyles.HexNumber);
            }
            else
            {
                errorCode.Value = int.Parse(errorString);
            }

            errorCode.IsHR = Win32Error.IsHR(errorCode.Value);
            errorCode.ErrorMessage = Win32Error.GetMessage(errorCode.Value);
            errorCode.HR = Win32Error.MakeHRFromErrorCode(errorCode.Value);
            errorCode.Exception = Marshal.GetExceptionForHR(errorCode.HR);

            return errorCode;
        }

        static internal bool IsHexString(string value)
        {
            return hexRegex.IsMatch(value);
        }
    }

    class ErrorAnalyzerModule : IModule
    {
        public ErrorAnalyzerModule(IErrorAnalyzerModel model) {}

        /// <summary>
        /// Notifies the module that it has be initialized.
        /// </summary>
        public void Initialize()
        {
            throw new NotImplementedException();
        }
    }

    interface IErrorAnalyzerModel : IModel
    {
        
    }

    interface IErrorAnalyzerViewModel : IViewModel
    {
        ErrorCode ErrorCode { get; set; }
    }


    
    class ErrorCode
    {
        public int Value { get; set; }

        public ErrorCode(int intValue)
        {
            Value = intValue;

            IsHR = Win32Error.IsHR(Value);
        }

        public ErrorCode()
        {
            
        }

        public int HR { get; set; }
        public bool IsHR { get; set; }
        public string ErrorMessage { get; set; }
        public Exception Exception { get; set; }
    }

    interface IViewModel {}

    interface IErrorAnalyzerView : IView<IErrorAnalyzerViewModel>
    {
        
    }

    class ErrorAnalyzerView : IErrorAnalyzerView
    {
        public IErrorAnalyzerViewModel ViewModel { get; set; }


    }

    interface IView<TViewModel>
    {
        TViewModel ViewModel { get; set; }
    }

    class ErrorAnalyzerModel : IErrorAnalyzerModel
    {
        /// <summary>
        /// Initializes this instance.
        /// </summary>
        public void Initialize()
        {
            throw new NotImplementedException();
        }
    }

    interface IModel : ICanInitialize
    {
        
    }
}
