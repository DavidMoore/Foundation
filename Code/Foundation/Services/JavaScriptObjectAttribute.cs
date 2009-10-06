using System;

namespace Foundation.Services
{
    public class JavaScriptObjectAttribute : Attribute
    {
        public string Prefix { get; set; }
        public string Suffix { get; set; }
    }
}