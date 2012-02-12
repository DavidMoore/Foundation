using Foundation.Build.Activities;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build.Activities
{
    [TestClass]
    public class BuildQueryProviderTests
    {
        [TestMethod]
        public void Regex()
        {
            var provider = new BuildQueryProvider();

            var number = "Blah blah 1.0.11012.4 blah";

            var result = provider.BuildNumberRegex.Match(number);

            Assert.IsTrue(result.Success);
            Assert.AreEqual("1", result.Groups["Major"].Value);
            Assert.AreEqual("0", result.Groups["Minor"].Value);
            Assert.AreEqual("11012", result.Groups["Build"].Value);
            Assert.AreEqual("4", result.Groups["Revision"].Value);
        }
    }
}