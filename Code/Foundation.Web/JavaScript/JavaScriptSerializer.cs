using System;
using System.Collections.Generic;
using Foundation.Services;
using Newtonsoft.Json;

namespace Foundation.Web.JavaScript
{
    [CLSCompliant(false)]
    public class JavaScriptSerializer : Newtonsoft.Json.JsonSerializer
    {
        /// <summary>
        /// Holds a stack of objects marked with ISerializableToJavaScript that are
        /// being serialized, to prevent stack overflow. This allows these objects to
        /// still use the JsonSerializer to serialize themselves without going into
        /// an infinite loop
        /// </summary>
        readonly IList<object> customSerializationObjects = new List<object>();

        /// <exception cref="ArgumentNullException">when <paramref name="writer"/> is null</exception>
        /// <exception cref="ArgumentNullException">when <paramref name="value"/> is null</exception>
        public new void Serialize(JsonWriter writer, object value)
        {
            if (writer == null) throw new ArgumentNullException("writer");
            if (value == null) throw new ArgumentNullException("value");

            if( ReflectUtils.Implements(value.GetType(), typeof(ISerializableToJavaScript)) && !customSerializationObjects.Contains(value) )
            {
                customSerializationObjects.Add(value);
                ((ISerializableToJavaScript) value).SerializeToJavaScript(this, writer);
                customSerializationObjects.Remove(value);
                return;
            }

            var attribute = ReflectUtils.GetAttribute<JavaScriptObjectAttribute>(value);

            if( attribute != null && !string.IsNullOrEmpty(attribute.Prefix) ) writer.WriteRaw(attribute.Prefix);

            base.Serialize(writer, value);

            if( attribute != null && !string.IsNullOrEmpty(attribute.Suffix) ) writer.WriteRaw(attribute.Suffix);
        }
    }
}