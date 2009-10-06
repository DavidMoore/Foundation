using Newtonsoft.Json;

namespace Foundation.Services
{
    public class JsonSerializationOptions
    {
        public JsonSerializationOptions(NullValueHandling nullValueHandling, MissingMemberHandling missingMemberHandling,
            ReferenceLoopHandling referenceLoopHandling)
        {
            NullValueHandling = nullValueHandling;
            MissingMemberHandling = missingMemberHandling;
            ReferenceLoopHandling = referenceLoopHandling;
        }

        public JsonSerializationOptions(NullValueHandling nullValueHandling)
            : this(nullValueHandling, MissingMemberHandling.Ignore, ReferenceLoopHandling.Ignore) {}

        public JsonSerializationOptions()
            : this(NullValueHandling.Include, MissingMemberHandling.Ignore, ReferenceLoopHandling.Ignore) {}

        public NullValueHandling NullValueHandling { get; set; }
        public MissingMemberHandling MissingMemberHandling { get; set; }
        public ReferenceLoopHandling ReferenceLoopHandling { get; set; }
        public JsonPropertyNameFormatting PropertyNameFormatting { get; set; }
    }
}