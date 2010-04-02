using Foundation.Services.Security;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services.Security
{
    [TestClass]
    public class SalterFixture
    {
        [TestMethod]
        public void Salted_at_end_of_string_with_default_length()
        {
            const string stringToSalt = "string to salt";
            var salter = new Salter {Position = SaltPosition.Suffix};
            var salted = salter.Salt(stringToSalt);
            Assert.AreEqual(stringToSalt + salted.Salt, salted.Value);
        }
    }
}