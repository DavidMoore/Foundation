using System;

namespace Foundation.Services
{
    public interface IJsonSerializer
    {
        /// <summary>
        /// Options for serialization
        /// </summary>
        JsonSerializationOptions SerializationOptions { get; set; }

        /// <summary>Serializes the specified object to JSON.</summary>
        /// <param name="target">The object.</param>
        /// <returns>JSON text</returns>
        string Serialize(object target);

        ///<summary>Serializes the specified object to JSON.</summary>
        ///<param name="jsonString">The json representation of an object string.</param>
        ///<param name="expectedType">The expected type.</param>
        object Deserialize(string jsonString, Type expectedType);

        ///<summary>Serializes the specified object to JSON.</summary>
        ///<param name="jsonString">The json representation of an object string.</param>
        T Deserialize<T>(string jsonString);

        ///<summary>Serializes the specified object to JSON.</summary>
        ///<param name="jsonString">The json representation of an object string.</param>
        T[] DeserializeArray<T>(string jsonString);
    }
}