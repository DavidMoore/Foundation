using System;
using Newtonsoft.Json;

namespace Foundation.Web.JavaScript
{
    /// <summary>
    /// Allows a class to handle its own JavaScript serialization
    /// </summary>
    [CLSCompliant(false)]
    public interface ISerializableToJavaScript
    {
        void SerializeToJavaScript(Newtonsoft.Json.JsonSerializer serializer, JsonWriter writer);
    }
}