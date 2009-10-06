using System;
using System.Security.Cryptography;
using System.Text;
using Foundation.Extensions;

namespace Foundation.Services.Security
{
    /// <summary>
    /// Hashes
    /// </summary>
    public class Hasher
    {
        /// <summary>
        /// Default constructor, which defaults to using the MD5 algorithm
        /// </summary>
        public Hasher()
        {
            Provider = HashProvider.MD5;
        }

        /// <summary>
        /// Creates a Hasher, configuring it to use the specified hashing provider
        /// </summary>
        /// <param name="provider">Hash algorithm to use by default</param>
        public Hasher(HashProvider provider)
        {
            Provider = provider;
        }

        #region Public Static Methods

        /// <summary>
        /// Creates and returns the HashAlgorithm object for the specified provider
        /// </summary>
        /// <param name="provider">The desired hash algorithm provider</param>
        /// <returns>The required hashing object</returns>
        public static HashAlgorithm GetHashAlgorithm(HashProvider provider)
        {
            switch( provider )
            {
                case HashProvider.MD5:
                    return System.Security.Cryptography.MD5.Create();

                case HashProvider.SHA1:
                    return SHA1.Create();

                case HashProvider.SHA256:
                    return SHA256.Create();

                case HashProvider.SHA384:
                    return SHA384.Create();

                case HashProvider.SHA512:
                    return SHA512.Create();
            }

            throw new ArgumentException("Unsupported HashProvider: {0}! ".FormatUICulture(provider) +
                    "If you add a new algorithm to the HashProvider, make sure you add it to the " +
                        "switch statement in the Hasher.GetHashAlgorithm method!", "provider");
        }

        #endregion

        #region Hash Methods

        /// <summary>
        /// Hashes an array of bytes
        /// </summary>
        /// <param name="data">Bytes to hash</param>
        /// <returns>Computed hash</returns>
        public virtual byte[] HashBytes(byte[] data)
        {
            // Get the hasher
            var hasher = GetHashAlgorithm(Provider);

            // Return the computed hash
            return hasher.ComputeHash(data);
        }

        /// <summary>
        /// Hashes a string and returns the result as a hex string
        /// </summary>
        /// <param name="data">The string to hash</param>
        /// <returns>Hashed string made up of hex characters</returns>
        public virtual string HashString(string data)
        {
            var bytes = Encoding.ASCII.GetBytes(data); // Convert string to bytes
            bytes = HashBytes(bytes); // Hash the bytes
            return BytesToHexString(bytes); // Return as a hex string
        }

        #endregion

        #region Comparison Methods

        /// <summary>
        /// Hashes a normal string and compares with another hash to see if they are equal
        /// </summary>
        /// <param name="compare">Normal string to compare</param>
        /// <param name="hash">Expected hash result</param>
        /// <returns>True if the string hashes to the expected hash result, otherwise false</returns>
        public virtual bool Compare(string compare, string hash)
        {
            return HashString(compare).Equals(hash);
        }

        /// <summary>
        /// Hashes a normal byte array and compares with another hash to see if they are equal
        /// </summary>
        /// <param name="compare">Normal byte array to compare</param>
        /// <param name="hash">Expected hash result</param>
        /// <returns>True if the array hashes to the expected hash result, otherwise false</returns>
        public virtual bool Compare(byte[] compare, byte[] hash)
        {
            var compareHash = HashBytes(compare);
            return Equals(compareHash, hash);
        }

        #endregion

        #region Hex Conversion Methods

        /// <summary>
        /// Converts an array of bytes to a hex string
        /// </summary>
        /// <param name="data">Data to convert to string</param>
        /// <param name="expectedLength">Expected length of the string for optimization</param>
        /// <returns>Hex string</returns>
        public string BytesToHexString(byte[] data, int expectedLength)
        {
            var sb = new StringBuilder(expectedLength);

            // Convert each byte to a 2-character hex string
            foreach( var b in data ) sb.AppendFormat("{0:x2}", b);

            return sb.ToString();
        }

        /// <summary>
        /// Converts an array of bytes to a hex string
        /// </summary>
        /// <param name="data">Data to convert to string</param>
        /// <returns>Hex string</returns>
        public string BytesToHexString(byte[] data)
        {
            // Convert the string, allocating the string length to 128 by default
            return BytesToHexString(data, 128);
        }

        #endregion

        #region MD5

        /// <summary>
        /// Computes the 32-character hex string MD5 Hash of the passed string
        /// </summary>
        /// <param name="toHash">The string to hash</param>
        /// <returns>32-character hex MD5 hash</returns>
        public static string MD5Hash(string toHash)
        {
            var hasher = new Hasher(HashProvider.MD5);
            return hasher.HashString(toHash);
        }

        /// <summary>
        /// Compares a string to a hash to see if they match
        /// </summary>
        /// <param name="compare">String to hash and compare</param>
        /// <param name="hash">Expected hash result</param>
        /// <returns>true if they match, otherwise false</returns>
        public static bool MD5Compare(string compare, string hash)
        {
            var hasher = new Hasher(HashProvider.MD5);
            return hasher.Compare(compare, hash);
        }

        #endregion

        #region SHA256

        /// <summary>
        /// Computes the 32-character hex string SHA256 Hash of the passed string
        /// </summary>
        /// <param name="toHash">The string to hash</param>
        /// <returns>32-character hex MD5 hash</returns>
        public static string SHA256Hash(string toHash)
        {
            var hasher = new Hasher(HashProvider.SHA256);
            return hasher.HashString(toHash);
        }

        /// <summary>
        /// Compares a string to a hash to see if they match
        /// </summary>
        /// <param name="compare">String to hash and compare</param>
        /// <param name="hash">Expected hash result</param>
        /// <returns>true if they match, otherwise false</returns>
        public static bool SHA256Compare(string compare, string hash)
        {
            var hasher = new Hasher(HashProvider.SHA256);
            return hasher.Compare(compare, hash);
        }

        #endregion

        /// <summary>
        /// The Hash algorithm to use
        /// </summary>
        public HashProvider Provider { get; set; }
    }
}