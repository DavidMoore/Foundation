using Foundation.Services.Security;
using NUnit.Framework;

namespace Foundation.Tests.Services.Security
{
    [TestFixture]
    public class PasswordGeneratorFixture
    {
        [Test]
        public void Length_of_generated_password_should_match_configured_default()
        {
            const int length = 15;

            var generator = new PasswordGenerator {MinimumPasswordLength = length, MaximumPasswordLength = length};

            var password = generator.Generate();

            Assert.AreEqual(length, password.Length);
        }

        [Test]
        public void Length_of_generated_password_should_match_specified_length()
        {
            const int length = 15;

            var generator = new PasswordGenerator();

            var password = generator.Generate(length);

            Assert.AreEqual(length, password.Length);
        }
    }
}