using Foundation.Build.MSBuild;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build.MSBuild
{
    [TestClass]
    public class GenerateAssemblyInfoTests
    {
        [TestMethod]
        public void Properties()
        {
            var task = new GenerateAssemblyInfo();

            Assert.IsNull(task.OutputPath);
        }
    }
}