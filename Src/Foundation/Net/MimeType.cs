﻿using System.Collections.Generic;

namespace Foundation.Net
{
    public class MimeType
    {
        public MimeType(string name, IList<string> extensions, string mimeType)
        {
            Name = name;
            Extensions = extensions;
            ContentType = new MimeContentType(mimeType);
        }

        public string Name { get; set; }

        public IList<string> Extensions { get; set; }

        /// <summary>
        /// The MIME Content-Type
        /// </summary>
        public MimeContentType ContentType { get; set; }
    }
}
