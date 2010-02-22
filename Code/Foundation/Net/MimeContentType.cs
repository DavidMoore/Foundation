using System;

namespace Foundation.Net
{
    public class MimeContentType
    {
        public MimeContentType(string mimeType)
        {
            if (mimeType == null) throw new ArgumentNullException("mimeType");
            var parts = mimeType.Split("/".ToCharArray(), StringSplitOptions.RemoveEmptyEntries);
            Type = parts[0].ToLower();
            SubType = parts[1].ToLower();
        }

        public const string TypeSeparator = "/";

        public string Type { get; set; }

        public string SubType { get; set; }

        public string Full
        {
            get { return string.Concat(Type, TypeSeparator, SubType); }
        }
    }
}