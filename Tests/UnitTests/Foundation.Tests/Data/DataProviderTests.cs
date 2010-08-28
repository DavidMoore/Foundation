using Foundation.Data;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace Foundation.Tests.Data
{
    [TestClass]
    public class DataProviderTests
    {
        [TestMethod]
        public void Api()
        {
            using (var provider = new Mock<IDataProvider>().Object)
            {
                provider.Initialize();
            }
        }
    }
}
