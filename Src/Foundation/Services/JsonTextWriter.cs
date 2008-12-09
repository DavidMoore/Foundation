using System;
using System.IO;

namespace Foundation.Services
{
    public class JsonTextWriter : Newtonsoft.Json.JsonTextWriter
    {
        public JsonPropertyNameFormatting PropertyNameFormatting { get; set; }

        public JsonTextWriter(TextWriter textWriter) : base(textWriter){}

        public override void WritePropertyName(string name)
        {
            var formattedName = name;

            switch( PropertyNameFormatting )
            {
                case JsonPropertyNameFormatting.Default:
                    break;
                case JsonPropertyNameFormatting.CamelCase:
                    formattedName = formattedName.ToCamelCase();
                    break;
                case JsonPropertyNameFormatting.PascalCase:
                    formattedName = formattedName.ToPascalCase();
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }

            base.WritePropertyName( formattedName );
        }
    }
}