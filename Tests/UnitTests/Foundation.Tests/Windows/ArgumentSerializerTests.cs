using System.Text;
using Foundation.Windows;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Windows
{

    [TestClass]
    public class ArgumentSerializerTests
    {
        [TestMethod]
        public void Filename()
        {
            var serializer = new ArgumentSerializer();

            var result = serializer.Deserialize<TestArgs1>(@"-switch -genericstring=blah C:\filename.txt");
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Switch);
            Assert.AreEqual("blah", result.GenericString);
        }

        [TestMethod]
        public void Boolean_property_with_no_value_is_set_to_true_by_default()
        {
            var serializer = new ArgumentSerializer();

            var result = serializer.Deserialize<TestArgs1>(@"-switch");
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Switch);
        }
    }
}