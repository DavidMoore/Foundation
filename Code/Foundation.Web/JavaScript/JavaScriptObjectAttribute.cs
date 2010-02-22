using System;

namespace Foundation.Web.JavaScript
{
    [AttributeUsage(AttributeTargets.Class)]
    public class JavaScriptObjectAttribute : Attribute
    {
        public string Prefix { get; set; }
        public string Suffix { get; set; }
    }
}