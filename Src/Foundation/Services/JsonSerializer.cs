using System;
using Castle.MonoRail.Framework;
using Castle.MonoRail.Framework.Services;

namespace Foundation.Services
{
    /// <summary>
    /// Provides methods for converting objects to and from JSON
    /// </summary>
    public class JsonSerializer : IJsonSerializer
    {
        #region IJsonSerializer Members

        /// <summary>Serializes the specified object to JSON.</summary>
        /// <param name="target">The object.</param>
        /// <returns>JSON text</returns>
        public string Serialize(object target)
        {
            // Try to auto-get the context
            return Serialize(target, MonoRailHttpHandlerFactory.CurrentEngineContext);
        }

        /// <summary>Serializes the specified object to JSON.</summary>
        /// <param name="target">The object.</param>
        /// <param name="context">The MonoRail context. If null, the NewstonsoftJSONSerializer will be used by default.</param>
        /// <returns>JSON text</returns>
        public string Serialize(object target, IEngineContext context)
        {
            return GetJsonSerializer(context).Serialize(target);
        }

        ///<summary>Serializes the specified object to JSON.</summary>
        ///<param name="jsonString">The json representation of an object string.</param>
        ///<param name="expectedType">The expected type.</param>
        public object Deserialize(string jsonString, Type expectedType)
        {
            return GetJsonSerializer().Deserialize(jsonString, expectedType);
        }

        ///<summary>Serializes the specified object to JSON.</summary>
        ///<param name="jsonString">The json representation of an object string.</param>
        public T Deserialize<T>(string jsonString)
        {
            return GetJsonSerializer().Deserialize<T>(jsonString);
        }

        ///<summary>Serializes the specified object to JSON.</summary>
        ///<param name="jsonString">The json representation of an object string.</param>
        public T[] DeserializeArray<T>(string jsonString)
        {
            return GetJsonSerializer().DeserializeArray<T>(jsonString);
        }

        #endregion

        /// <summary>
        /// Gets the default JSON Serializer
        /// </summary>
        /// <returns></returns>
        static IJSONSerializer GetJsonSerializer()
        {
            return GetJsonSerializer(null);
        }

        /// <summary>
        /// Gets the JSON Serializer using the context to find the registered service. If
        /// no JSON service can be found, it will fall back to the NewtonsoftJSONSerializer
        /// by default.
        /// </summary>
        /// <param name="context">The MonoRail Engine Context containing registered services.</param>
        /// <returns></returns>
        static IJSONSerializer GetJsonSerializer(IEngineContext context)
        {
            IJSONSerializer serializer = null;

            // Try to get the JSON Serializer Service
            if( context != null ) serializer = context.Services.JSONSerializer;

            // Use the Newtonsoft serializer by default
            if( serializer == null ) serializer = new NewtonsoftJSONSerializer();

            return serializer;
        }
    }
}