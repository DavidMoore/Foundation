using System;
using System.Security.Cryptography;

namespace Foundation.Services.Security
{
    public class PasswordGenerator
    {
        const int defaultMaximumPasswordLength = 12;
        const int defaultMinimumPasswordLength = 8;

        public PasswordGenerator()
        {
            LowerCaseCharacters = "abcdefgijkmnopqrstwxyz";
            NumericCharacters = "23456789";
            UpperCaseCharacters = "ABCDEFGHJKLMNPQRSTWXYZ";
            MinimumPasswordLength = defaultMinimumPasswordLength;
            MaximumPasswordLength = defaultMaximumPasswordLength;
        }

        /// <summary>
        /// Lower-case characters to use when generating passwords
        /// </summary>
        public string LowerCaseCharacters { get; set; }

        /// <summary>
        /// Numeric characters to use when generating passwords
        /// </summary>
        public string NumericCharacters { get; set; }

        /// <summary>
        /// Upper-case characters to use when generating passwords
        /// </summary>
        public string UpperCaseCharacters { get; set; }

        /// <summary>
        /// The maximum length for generated passwords
        /// </summary>
        public int? MaximumPasswordLength { get; set; }

        /// <summary>
        /// The minimum length for generated passwords
        /// </summary>
        public int? MinimumPasswordLength { get; set; }

        /// <summary>
        /// Generates a random password of a random length using generator defaults
        /// </summary>
        /// <returns></returns>
        public string Generate()
        {
            return Generate(MinimumPasswordLength ?? defaultMinimumPasswordLength,
                MaximumPasswordLength ?? defaultMaximumPasswordLength);
        }

        /// <summary>
        /// Generates a random password of the specified length
        /// </summary>
        /// <param name="length"></param>
        /// <returns></returns>
        public string Generate(int length)
        {
            return Generate(length, length);
        }

        /// <summary>
        /// Generates a random password or a random length within the specified range
        /// </summary>
        /// <param name="minLength"></param>
        /// <param name="maxLength"></param>
        /// <returns></returns>
        public string Generate(int minLength, int maxLength)
        {
            // Make sure that input parameters are valid.
            ThrowException.IfTrue(minLength <= 0, "The minimum password length must be at least 1");
            ThrowException.IfTrue(maxLength <= 0, "The maximum password length must be at least 1");
            ThrowException.IfFalse(maxLength >= minLength,
                "The minimum password length can't be more than the maximum password length");

            // Create a local array containing supported password characters
            // grouped by types.
            var charGroups = new[]
                {
                    LowerCaseCharacters.ToCharArray(), UpperCaseCharacters.ToCharArray(),
                    NumericCharacters.ToCharArray()
                };

            // Use this array to track the number of unused characters in each
            // character group.
            var charsLeftInGroup = new int[charGroups.Length];

            // Initially, all characters in each group are not used.
            for( var i = 0; i < charsLeftInGroup.Length; i++ )
                charsLeftInGroup[i] = charGroups[i].Length;

            // Use this array to track (iterate through) unused character groups.
            var leftGroupsOrder = new int[charGroups.Length];

            // Initially, all character groups are not used.
            for( var i = 0; i < leftGroupsOrder.Length; i++ )
                leftGroupsOrder[i] = i;

            // Because we cannot use the default randomizer, which is based on the
            // current time (it will produce the same "random" number within a
            // second), we will use a random number generator to seed the
            // randomizer.

            // Use a 4-byte array to fill it with random bytes and convert it then
            // to an integer value.
            var randomBytes = new byte[4];

            // Generate 4 random bytes.
            var rng = new RNGCryptoServiceProvider();
            rng.GetBytes(randomBytes);

            // Convert 4 bytes into a 32-bit integer value.
            var seed = (randomBytes[0] & 0x7f) << 24 | randomBytes[1] << 16 | randomBytes[2] << 8 |
                randomBytes[3];

            // Now, this is real randomization.
            var random = new Random(seed);

            // This array will hold password characters.
            char[] password;

            // Allocate appropriate memory for the password.
            if( minLength < maxLength )
            {
                password = new char[random.Next(minLength, maxLength + 1)];
            }
            else
            {
                password = new char[minLength];
            }

            // Index of the next character to be added to password.
            int nextCharIdx;

            // Index of the next character group to be processed.
            int nextGroupIdx;

            // Index which will be used to track not processed character groups.
            int nextLeftGroupsOrderIdx;

            // Index of the last non-processed character in a group.
            int lastCharIdx;

            // Index of the last non-processed group. Initially, we will skip
            // special characters.
            var lastLeftGroupsOrderIdx = leftGroupsOrder.Length - 1;

            // Generate password characters one at a time.
            for( var i = 0; i < password.Length; i++ )
            {
                // If only one character group remained unprocessed, process it;
                // otherwise, pick a random character group from the unprocessed
                // group list.
                if( lastLeftGroupsOrderIdx == 0 )
                    nextLeftGroupsOrderIdx = 0;
                else
                    nextLeftGroupsOrderIdx = random.Next(0, lastLeftGroupsOrderIdx);

                // Get the actual index of the character group, from which we will
                // pick the next character.
                nextGroupIdx = leftGroupsOrder[nextLeftGroupsOrderIdx];

                // Get the index of the last unprocessed characters in this group.
                lastCharIdx = charsLeftInGroup[nextGroupIdx] - 1;

                // If only one unprocessed character is left, pick it; otherwise,
                // get a random character from the unused character list.
                if( lastCharIdx == 0 )
                    nextCharIdx = 0;
                else
                    nextCharIdx = random.Next(0, lastCharIdx + 1);

                // Add this character to the password.
                password[i] = charGroups[nextGroupIdx][nextCharIdx];

                // If we processed the last character in this group, start over.
                if( lastCharIdx == 0 )
                    charsLeftInGroup[nextGroupIdx] = charGroups[nextGroupIdx].Length;
                    // There are more unprocessed characters left.
                else
                {
                    // Swap processed character with the last unprocessed character
                    // so that we don't pick it until we process all characters in
                    // this group.
                    if( lastCharIdx != nextCharIdx )
                    {
                        var temp = charGroups[nextGroupIdx][lastCharIdx];
                        charGroups[nextGroupIdx][lastCharIdx] = charGroups[nextGroupIdx][nextCharIdx];
                        charGroups[nextGroupIdx][nextCharIdx] = temp;
                    }
                    // Decrement the number of unprocessed characters in
                    // this group.
                    charsLeftInGroup[nextGroupIdx]--;
                }

                // If we processed the last group, start all over.
                if( lastLeftGroupsOrderIdx == 0 )
                    lastLeftGroupsOrderIdx = leftGroupsOrder.Length - 1;
                    // There are more unprocessed groups left.
                else
                {
                    // Swap processed group with the last unprocessed group
                    // so that we don't pick it until we process all groups.
                    if( lastLeftGroupsOrderIdx != nextLeftGroupsOrderIdx )
                    {
                        var temp = leftGroupsOrder[lastLeftGroupsOrderIdx];
                        leftGroupsOrder[lastLeftGroupsOrderIdx] = leftGroupsOrder[nextLeftGroupsOrderIdx];
                        leftGroupsOrder[nextLeftGroupsOrderIdx] = temp;
                    }
                    // Decrement the number of unprocessed groups.
                    lastLeftGroupsOrderIdx--;
                }
            }

            // Convert password characters into a string and return the result.
            return new string(password);
        }
    }
}