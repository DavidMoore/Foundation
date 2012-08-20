using System;
using System.Globalization;

namespace Foundation.Content
{
    public class MimeContentType
    {
        public MimeContentType(string mimeType)
        {
            if (mimeType == null) throw new ArgumentNullException("mimeType");
            var parts = mimeType.Split("/".ToCharArray(), StringSplitOptions.RemoveEmptyEntries);
            MajorType = parts[0].ToLower(CultureInfo.CurrentUICulture);
            MinorType = parts[1].ToLower(CultureInfo.CurrentUICulture);
        }

        public const string TypeSeparator = "/";

        public string MajorType { get; set; }

        public string MinorType { get; set; }

        public string Full
        {
            get { return string.Concat(MajorType, TypeSeparator, MinorType); }
        }
    }
}