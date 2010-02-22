using System;
using System.IO;
using Newtonsoft.Json;

namespace Foundation.Web.JavaScript
{
    /// <summary>
    /// Provides methods for converting objects to and from JSON
    /// </summary>
    [CLSCompliant(false)]
    public class JsonSerializer : IJsonSerializer
    {
        public JsonSerializer() : this(new JsonSerializationOptions()) {}

        public JsonSerializer(JsonSerializationOptions options)
        {
            SerializationOptions = options;
        }

        #region IJsonSerializer Members

        public JsonSerializationOptions SerializationOptions { get; set; }

        /// <summary>Serializes the specified object to JSON.</summary>
        /// <param name="target">The object.</param>
        /// <returns>JSON text</returns>
        public virtual string Serialize(object target)
        {
            var serializer = new JavaScriptSerializer
                                 {
                                     ReferenceLoopHandling = SerializationOptions.ReferenceLoopHandling,
                                     NullValueHandling = SerializationOptions.NullValueHandling,
                                     MissingMemberHandling = SerializationOptions.MissingMemberHandling
                                 };

            using (var writer = new StringWriter())
            {
                var jsonWriter = new JsonTextWriter(writer)
                                     {
                                         PropertyNameFormatting = SerializationOptions.PropertyNameFormatting
                                     };
                
                serializer.Serialize(jsonWriter, target);
                return writer.GetStringBuilder().ToString();
            }
        }

        ///<summary>Serializes the specified object to JSON.</summary>
        ///<param name="jsonValue">The json representation of an object string.</param>
        ///<param name="expectedType">The expected type.</param>
        public virtual object Deserialize(string jsonValue, Type expectedType)
        {
            return JsonConvert.DeserializeObject(jsonValue, expectedType);
        }

        ///<summary>Serializes the specified object to JSON.</summary>
        ///<param name="jsonValue">The json representation of an object string.</param>
        public virtual T Deserialize<T>(string jsonValue)
        {
            return (T) JsonConvert.DeserializeObject(jsonValue, typeof(T));
        }

        ///<summary>Serializes the specified object to JSON.</summary>
        ///<param name="jsonValue">The json representation of an object string.</param>
        public virtual T[] DeserializeArray<T>(string jsonValue)
        {
            return (T[]) JsonConvert.DeserializeObject(jsonValue, typeof(T[]));
        }

        #endregion
    }
}