using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests
{
    [TestClass]
    public class SubnetMaskedIpFixture
    {
        [TestMethod]
        public void Can_parse_decimal_ip()
        {
            var ip = SubnetMaskedIP.Parse("192.168.1.1/24");
        }

        [TestMethod]
        public void Can_parse_decimal_ip_without_subnet_mask()
        {
            var ip = SubnetMaskedIP.Parse("192.168.1.1");
        }

        [TestMethod]
        public void Can_parse_hex_ip()
        {
            var ip = SubnetMaskedIP.Parse("3ae3:90a0:bd05:01d2:288a:1fc0:0001:10ee");
        }

        [TestMethod]
        [ExpectedException(typeof(FormatException))]
        public void Invalid_ip_throws_format_exception()
        {
            SubnetMaskedIP.Parse("invalid");
        }
    }
}