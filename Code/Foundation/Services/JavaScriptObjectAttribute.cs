using System;

namespace Foundation.Services
{
    [AttributeUsage(AttributeTargets.Class)]
    public class JavaScriptObjectAttribute : Attribute
    {
        public string Prefix { get; set; }
        public string Suffix { get; set; }
    }
}