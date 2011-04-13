using System.Linq;
using Foundation.Windows;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Windows
{
    [TestClass]
    public class ArgumentInfoParserTests
    {
        [TestMethod]
        public void SplitArguments()
        {
            var args = ArgumentInfoParser.SplitArguments("-1 andTwo then-three \"four and not five\" --fifth");

            Assert.AreEqual(5, args.Count());
            Assert.AreEqual("-1", args.First());
            Assert.AreEqual("andTwo", args.Skip(1).First());
            Assert.AreEqual("then-three", args.Skip(2).First());
            Assert.AreEqual("four and not five", args.Skip(3).First());
            Assert.AreEqual("--fifth", args.Skip(4).First());
        }

        [TestMethod]
        public void ParseArgument()
        {
            var arg = ArgumentInfoParser.ParseArgument("-1");
            Assert.AreEqual("1", arg.Name);
            Assert.IsNull(arg.Value);
        }
    }
}