using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;

namespace Foundation
{
    /// <summary>
    /// Contains a subnet mask in addition to the IP Address, and methods for
    /// comparing IPs based on their subnets
    /// </summary>
    public class SubnetMaskedIP
    {
        private int? addressBitLength;
        private IPAddress networkAddress;

        private byte[] networkAddressBytes;

        /// <summary>
        /// IP address
        /// </summary>
        public IPAddress NetworkAddress
        {
            get { return networkAddress; }
            set
            {
                networkAddress = value;
                networkAddressBytes = null;
                addressBitLength = null;
            }
        }

        /// <summary>
        /// A copy of the NetworkAddress as bytes
        /// </summary>
        public IEnumerable<byte> NetworkAddressBytes
        {
            get { return networkAddressBytes ?? (networkAddressBytes = NetworkAddress.GetAddressBytes()); }
        }

        /// <summary>
        /// Subnet mask
        /// </summary>
        public int SubnetMaskLength { set; get; }

        /// <summary>
        /// Length of the IPAddress in bits
        /// </summary>
        public int AddressBitLength
        {
            get
            {
                if (!addressBitLength.HasValue)
                {
                    addressBitLength = NetworkAddressBytes.Count()*8;
                }
                return addressBitLength.Value;
            }
        }

        /// <summary>
        /// Returns byte array of subnet mask
        /// </summary>
        /// <returns></returns>
        public byte[] GetSubnetMaskBytes()
        {
            int length = NetworkAddressBytes.Count();
            var maskbytes = new byte[length];

            for (int i = 0; i < length; i++)
            {
                if (SubnetMaskLength >= (i + 1)*8)
                {
                    maskbytes[i] = 255;
                }
                else
                {
                    for (int j = 0; j < 8; j++)
                    {
                        if (SubnetMaskLength <= i*8 + j)
                        {
                            return maskbytes;
                        }
                        maskbytes[i] += (byte) Math.Pow(2, 7 - j);
                    }
                }
            }

            return maskbytes;
        }

        /// <summary>
        /// Converts the string representation of the network address to SubnetMaskedIp object.
        /// </summary>
        /// <param name="address"></param>
        /// <returns></returns>
        public static SubnetMaskedIP Parse(string address)
        {
            if (address == null) throw new ArgumentNullException("address");

            string[] pair = address.Split(new[] {'/'}, StringSplitOptions.RemoveEmptyEntries);
            var maskedIp = new SubnetMaskedIP { NetworkAddress = IPAddress.Parse(pair[0]) };

            int bitLength = maskedIp.NetworkAddressBytes.Count() * 8;
            maskedIp.SubnetMaskLength = bitLength;

            if (pair.Length > 1)
            {
                maskedIp.SubnetMaskLength = int.Parse(pair[1],CultureInfo.CurrentCulture);
                if (maskedIp.SubnetMaskLength > bitLength)
                {
                    maskedIp.SubnetMaskLength = bitLength;
                }
            }
            // TODO: Auto-detect the network mask from IP address

            return maskedIp;
        }

        /// <summary>
        /// Returns true if the given address is in the subnet.
        /// </summary>
        /// <param name="address"></param>
        /// <returns></returns>
        public bool IsInner(IPAddress address)
        {
            if (address == null) throw new ArgumentNullException("address");

            byte[] networkbytes = NetworkAddressBytes.ToArray();
            byte[] addressbytes = address.GetAddressBytes();

            if (addressbytes.Length != networkbytes.Count())
            {
                return false;
            }

            byte[] maskbytes = GetSubnetMaskBytes();

            byte[] maskedNetwork = And(networkbytes, maskbytes);
            byte[] maskedAddress = And(addressbytes, maskbytes);

            return Equal(maskedNetwork, maskedAddress);
        }

        protected static bool Equal(byte[] byte1, byte[] byte2)
        {
            if (byte1 == null) throw new ArgumentNullException("byte1");
            if (byte2 == null) throw new ArgumentNullException("byte2");

            if (byte1.Length != byte2.Length) return false;

            for (int i = 0; i < byte1.Length; i++)
            {
                if (byte1[i] != byte2[i]) return false;
            }

            return true;
        }

        protected static byte[] And(byte[] byte1, byte[] byte2)
        {
            if (byte1 == null) throw new ArgumentNullException("byte1");
            if (byte2 == null) throw new ArgumentNullException("byte2");

            var andbyte = new byte[byte1.Length];

            for (int i = 0; i < byte1.Length && i < byte2.Length; i++)
            {
                andbyte[i] = (byte) (byte1[i] & byte2[i]);
            }

            return andbyte;
        }
    }
}