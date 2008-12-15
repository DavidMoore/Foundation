using System.Collections.Generic;
using Newtonsoft.Json;

namespace Foundation.Services
{
    public class JavaScriptSerializer : Newtonsoft.Json.JsonSerializer
    {
        /// <summary>
        /// Holds a stack of objects marked with ISerializableToJavaScript that are
        /// being serialized, to prevent stack overflow. This allows these objects to
        /// still use the JsonSerializer to serialize themselves without going into
        /// an infinite loop
        /// </summary>
        readonly IList<object> customSerializationObjects = new List<object>();

        public override void SerializeObject(JsonWriter writer, object value)
        {
            if (ReflectUtils.Implements(value.GetType(), typeof(ISerializableToJavaScript)) && !customSerializationObjects.Contains(value))
            {
                customSerializationObjects.Add(value);
                ((ISerializableToJavaScript)value).SerializeToJavaScript(this, writer);
                customSerializationObjects.Remove(value);
                return;
            }

            var attribute = ReflectUtils.GetAttribute<JavaScriptObjectAttribute>(value);

            if (attribute != null && !string.IsNullOrEmpty(attribute.Prefix)) writer.WriteRaw(attribute.Prefix);

            base.SerializeObject(writer, value);

            if (attribute != null && !string.IsNullOrEmpty(attribute.Suffix)) writer.WriteRaw(attribute.Suffix);
        }
    }
}