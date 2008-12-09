using System;
using NUnit.Framework;

namespace Foundation.Tests
{
    [TestFixture]
    public class SubnetMaskedIpFixture
    {
        [Test]
        public void Can_parse_decimal_ip()
        {
            var ip = SubnetMaskedIp.Parse("192.168.1.1/24");
        }

        [Test]
        public void Can_parse_decimal_ip_without_subnet_mask()
        {
            var ip = SubnetMaskedIp.Parse("192.168.1.1");
        }

        [Test]
        public void Can_parse_hex_ip()
        {
            var ip = SubnetMaskedIp.Parse("3ae3:90a0:bd05:01d2:288a:1fc0:0001:10ee");
        }

        [Test]
        [ExpectedException(typeof(FormatException))]
        public void Invalid_ip_throws_format_exception()
        {
            SubnetMaskedIp.Parse("invalid");
        }
    }
}