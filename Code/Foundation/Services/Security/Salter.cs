using System.Text;

namespace Foundation.Services.Security
{
    public class Salter
    {
        const int defaultSaltLength = 4;
        Encoding utf8 = Encoding.UTF8;

        public Salter()
        {
            PasswordGenerator = new PasswordGenerator();
            Position = SaltPosition.Suffix;
            Length = defaultSaltLength;
        }

        public PasswordGenerator PasswordGenerator { get; set; }

        public int Length { get; set; }

        public SaltPosition Position { get; set; }

        public SaltedValue Salt(string stringToSalt)
        {
            // Generate the salt
            var salt = PasswordGenerator.Generate(Length);

            // Add the salt
            var value = AddSalt(stringToSalt, salt);

            return new SaltedValue {Salt = salt, SaltPosition = Position, UnsaltedValue = stringToSalt, Value = value};
        }

        string AddSalt(string stringToSalt, string salt)
        {
            if( Position == SaltPosition.Prefix )
            {
                return salt + stringToSalt;
            }
            return stringToSalt + salt;
        }
    }
}