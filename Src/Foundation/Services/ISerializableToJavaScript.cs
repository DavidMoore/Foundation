using Newtonsoft.Json;

namespace Foundation.Services
{
    /// <summary>
    /// Allows a class to handle its own JavaScript serialization
    /// </summary>
    public interface ISerializableToJavaScript
    {
        void SerializeToJavaScript(Newtonsoft.Json.JsonSerializer serializer, JsonWriter writer);
    }
}