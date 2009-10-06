using System;
using System.Text;

namespace Foundation.Services.Security
{
    /// <summary>
    /// Salts and Hashes
    /// </summary>
    public class SaltedHasher : Hasher
    {
        /// <summary>
        /// Default salt length
        /// </summary>
        protected static readonly int defaultSaltLength = 8;

        /// <summary>
        /// Default constructor, which defaults to using the MD5 algorithm with a prefixed salt of 8 characters
        /// </summary>
        public SaltedHasher() : this(HashProvider.MD5, defaultSaltLength, SaltPosition.Prefix, new PasswordGenerator()) {}

        /// <summary>
        /// Creates a SaltedHasher, configuring it to use the specified hashing provider and using a default prefixed salt of 8 characters
        /// </summary>
        /// <param name="provider">Hash algorithm to use by default</param>
        public SaltedHasher(HashProvider provider) : this(provider, defaultSaltLength, SaltPosition.Prefix, new PasswordGenerator()) {}

        /// <summary>
        /// Creates a SaltedHasher, configuring it to use the specified hashing provider and salt length, prefixing the salt by default 
        /// </summary>
        /// <param name="provider">Hash algorithm to use by default</param>
        /// <param name="saltLength">Length for the salt</param>
        public SaltedHasher(HashProvider provider, int saltLength) : this(provider, saltLength, SaltPosition.Prefix, new PasswordGenerator()) {}

        /// <summary>
        /// Creates a SaltedHasher, configuring it to use the specified hashing provider, salt position and salt length
        /// </summary>
        /// <param name="provider">Hash algorithm to use by default</param>
        /// <param name="saltLength">Length for the salt</param>
        /// <param name="saltPosition">Position for the salt</param>
        public SaltedHasher(HashProvider provider, int saltLength, SaltPosition saltPosition) : this(provider, saltLength, saltPosition, new PasswordGenerator()) {}

        /// <summary>
        /// Creates a SaltedHasher, configuring it to use the specified hashing provider, salt position and salt length, and password generator
        /// </summary>
        /// <param name="provider">Hash algorithm to use by default</param>
        /// <param name="saltLength">Length for the salt</param>
        /// <param name="saltPosition">Position for the salt</param>
        /// <param name="passwordGenerator">Password generator for generating the salts</param>
        SaltedHasher(HashProvider provider, int saltLength, SaltPosition saltPosition, PasswordGenerator passwordGenerator)
        {
            Provider = provider;
            SaltPosition = saltPosition;
            SaltLength = saltLength;
            PasswordGenerator = passwordGenerator;
        }

        #region Salt Methods

        /// <summary>
        /// Generates a random salt value
        /// </summary>
        /// <returns></returns>
        public string GenerateSalt()
        {
            return PasswordGenerator.Generate(SaltLength);
        }

        /// <summary>
        /// Finds a salt value from the passed hash, using the salt config
        /// </summary>
        /// <param name="hash">Hash to find salt value of</param>
        /// <returns></returns>
        public string FindSalt(string hash)
        {
            var salt = FindSalt(Convert.FromBase64String(hash));

            return Encoding.UTF8.GetString(salt);
        }

        /// <summary>
        /// Finds a salt value from the passed hash, using the salt config
        /// </summary>
        /// <param name="hash">Hash to find salt value of</param>
        /// <returns></returns>
        public byte[] FindSalt(byte[] hash)
        {
            // To hold the salt data once we find it
            var salt = new byte[SaltLength];

            switch( SaltPosition )
            {
                    // Salt at the start of the hash
                case SaltPosition.Prefix:
                    Array.Copy(hash, salt, SaltLength);
                    break;

                    // Salt at the end of the hash
                case SaltPosition.Suffix:
                    Array.Copy(hash, hash.Length - salt.Length, salt, 0, salt.Length);
                    break;

                default:
                    throw new Exception(
                        "Couldn't find salt value from hash! Make sure the salt length, position and hash are correct.");
            }

            return salt;
        }

        #endregion

        #region Hash Methods

        /// <summary>
        /// Hashes an array of bytes using a random salt
        /// </summary>
        /// <param name="data">Bytes to hash</param>
        /// <returns>Computed hash</returns>
        public override byte[] HashBytes(byte[] data)
        {
            return HashBytes(data, null);
        }

        /// <summary>
        /// Hashes an array of bytes using the specified salt
        /// </summary>
        /// <param name="data">Bytes to hash</param>
        /// <param name="salt">Salt to use (null to use a random salt)</param>
        /// <returns>Computed hash</returns>
        public byte[] HashBytes(byte[] data, byte[] salt)
        {
            // Get the hasher
            var hasher = GetHashAlgorithm(Provider);

            // Generate a salt value if none was specified
            if( salt == null )
            {
                var saltValue = GenerateSalt();
                salt = Encoding.UTF8.GetBytes(saltValue); // Convert the salt to bytes
            }

            // Concatenate the salt and the data
            var result = new byte[salt.Length + data.Length];

            // Salt before or after the hash?
            switch( SaltPosition )
            {
                    // Salt before the hash
                case SaltPosition.Prefix:
                    Array.Copy(salt, result, salt.Length);
                    Array.Copy(data, 0, result, salt.Length, data.Length);
                    break;
                    // Salt after the hash
                case SaltPosition.Suffix:
                    Array.Copy(data, result, data.Length);
                    Array.Copy(salt, 0, result, data.Length, salt.Length);
                    break;
            }

            // Get the hash
            var hash = hasher.ComputeHash(result);

            // Now we need to also place the salt with the hash
            result = new byte[hash.Length + salt.Length];

            // Salt before or after the hash?
            switch( SaltPosition )
            {
                    // Salt before the hash
                case SaltPosition.Prefix:

                    // Copy the salt to the start of the result array
                    Array.Copy(salt, result, salt.Length);

                    // Copy the hash to the result array after the salt
                    Array.Copy(hash, 0, result, salt.Length, hash.Length);

                    break;

                    // Salt after the hash
                case SaltPosition.Suffix:
                    // Copy the hash to the start of the result array
                    Array.Copy(hash, result, hash.Length);

                    // Copy the salt to the result array after the hash
                    Array.Copy(salt, 0, result, hash.Length, salt.Length);

                    break;
            }

            // Finally, return our result
            return result;
        }

        /// <summary>
        /// Hashes a string with a random salt and returns the result as a hex string
        /// </summary>
        /// <param name="data">The string to hash</param>
        /// <returns>Hashed string made up of hex characters</returns>
        public override string HashString(string data)
        {
            return HashString(data, null);
        }

        /// <summary>
        /// Hashes a string using the passed salt and returns the hex string result
        /// </summary>
        /// <param name="data">The string to hash</param>
        /// <param name="salt">Salt to use</param>
        /// <returns></returns>
        public string HashString(string data, string salt)
        {
            var bytes = Encoding.UTF8.GetBytes(data); // Convert string to bytes

            // If the salt is null, autogenerate a random salt
            if( salt == null )
            {
                salt = GenerateSalt();
            }

            var saltBytes = Encoding.UTF8.GetBytes(salt); // Convert salt to bytes

            bytes = HashBytes(bytes, saltBytes); // Hash the bytes

            return Convert.ToBase64String(bytes);
        }

        #endregion

        #region Comparison Methods

        /// <summary>
        /// Hashes a normal string and compares with another hash to see if they are equal
        /// </summary>
        /// <param name="compare">Normal string to compare</param>
        /// <param name="hash">Expected hash result</param>
        /// <returns>True if the string hashes to the expected hash result, otherwise false</returns>
        public override bool Compare(string compare, string hash)
        {
            // Find the salt value
            var salt = FindSalt(hash);

            return HashString(compare, salt).Equals(hash);
        }

        /// <summary>
        /// Hashes a normal byte array and compares with another hash to see if they are equal
        /// </summary>
        /// <param name="compare">Normal byte array to compare</param>
        /// <param name="hash">Expected hash result</param>
        /// <returns>True if the array hashes to the expected hash result, otherwise false</returns>
        public override bool Compare(byte[] compare, byte[] hash)
        {
            var compareHash = HashBytes(compare);
            return Equals(compareHash, hash);
        }

        #endregion

        #region MD5

        /// <summary>
        /// Computes the 32-character hex string MD5 Hash of the passed string
        /// </summary>
        /// <param name="toHash">The string to hash</param>
        /// <returns>32-character hex MD5 hash</returns>
        public new static string MD5Hash(string toHash)
        {
            var hasher = new SaltedHasher(HashProvider.MD5);
            return hasher.HashString(toHash);
        }

        /// <summary>
        /// Compares a string to a hash to see if they match
        /// </summary>
        /// <param name="compare">String to hash and compare</param>
        /// <param name="hash">Expected hash result</param>
        /// <returns>true if they match, otherwise false</returns>
        public new static bool MD5Compare(string compare, string hash)
        {
            var hasher = new SaltedHasher(HashProvider.MD5);
            return hasher.Compare(compare, hash);
        }

        #endregion

        #region SHA256

        /// <summary>
        /// Computes the 32-character hex string SHA256 Hash of the passed string
        /// </summary>
        /// <param name="toHash">The string to hash</param>
        /// <returns>32-character hex SHA256 hash</returns>
        public new static string SHA256Hash(string toHash)
        {
            return SHA256Hash(toHash, null);
        }

        /// <summary>
        /// Computes the 32-character hex string SHA256 Hash of the passed string and salt
        /// </summary>
        /// <param name="toHash">The string to hash</param>
        /// <param name="salt"></param>
        /// <returns>32-character hex SHA256 hash</returns>
        public static string SHA256Hash(string toHash, string salt)
        {
            var hasher = new SaltedHasher(HashProvider.SHA256);

            // Use the predefined salt if specified
            return salt != null ? hasher.HashString(toHash, salt) : hasher.HashString(toHash);
        }

        /// <summary>
        /// Compares a string to a hash to see if they match
        /// </summary>
        /// <param name="compare">String to hash and compare</param>
        /// <param name="hash">Expected hash result</param>
        /// <returns>true if they match, otherwise false</returns>
        public new static bool SHA256Compare(string compare, string hash)
        {
            var hasher = new SaltedHasher(HashProvider.SHA256);
            return hasher.Compare(compare, hash);
        }

        #endregion

        /// <summary>
        /// The password generator used for auto-generating salts
        /// </summary>
        public PasswordGenerator PasswordGenerator { get; private set; }

        /// <summary>
        /// Length for the salt value
        /// </summary>
        public int SaltLength { get; set; }

        /// <summary>
        /// Location of the salt value (at the start, or the end of the hash)
        /// </summary>
        public SaltPosition SaltPosition { get; set; }
    }
}