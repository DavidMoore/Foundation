using System;
using System.IO;
using Foundation.ExtensionMethods;

namespace Foundation.Web.JavaScript
{
    [CLSCompliant(false)]
    public class JsonTextWriter : Newtonsoft.Json.JsonTextWriter
    {
        public JsonTextWriter(TextWriter textWriter) : base(textWriter) {}
        public JsonPropertyNameFormatting PropertyNameFormatting { get; set; }

        public override void WritePropertyName(string name)
        {
            var formattedName = name;

            switch( PropertyNameFormatting )
            {
                case JsonPropertyNameFormatting.CamelCase:
                    formattedName = formattedName.ToCamelCase();
                    break;
                case JsonPropertyNameFormatting.PascalCase:
                    formattedName = formattedName.ToPascalCase();
                    break;
            }

            base.WritePropertyName(formattedName);
        }
    }
}