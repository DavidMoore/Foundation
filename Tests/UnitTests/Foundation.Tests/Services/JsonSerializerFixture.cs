using Foundation.Web.JavaScript;
using Newtonsoft.Json;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using JsonSerializer=Foundation.Web.JavaScript.JsonSerializer;

namespace Foundation.Tests.Services
{
    [TestClass]
    public class JsonSerializerFixture
    {
        [JsonObject(MemberSerialization.OptIn)]
        internal class DummyObject
        {
            public string invisible;

            [JsonProperty] public string visible;
        }

        [TestMethod]
        public void Deserialize()
        {
            const string expectedSerialized = "{\"visible\":\"visible\"}";
            var dummy = new DummyObject {invisible = "invisible", visible = "visible"};
            var serializer = new JsonSerializer();
            var serialized = serializer.Serialize(dummy);
            Assert.AreEqual(expectedSerialized, serialized);

            var result = serializer.Deserialize<DummyObject>(serialized);
            Assert.AreEqual("visible", result.visible);
        }

        [TestMethod]
        public void SerializationOptions()
        {
            var serializer = new JsonSerializer();

            Assert.AreEqual("{\"visible\":null}", serializer.Serialize(new DummyObject()));
            Assert.AreEqual("{\"visible\":\"testText\"}", serializer.Serialize(new DummyObject {visible = "testText"}));

            serializer.SerializationOptions.NullValueHandling = NullValueHandling.Ignore;
            Assert.AreEqual("{}", serializer.Serialize(new DummyObject()));
            Assert.AreEqual("{\"visible\":\"testText\"}", serializer.Serialize(new DummyObject {visible = "testText"}));

            serializer.SerializationOptions.PropertyNameFormatting = JsonPropertyNameFormatting.PascalCase;
            Assert.AreEqual("{\"Visible\":\"testText\"}", serializer.Serialize(new DummyObject {visible = "testText"}));
        }

        [TestMethod]
        public void Serialize()
        {
            const string expected = "{\"visible\":null}";
            var result = new JsonSerializer().Serialize(new DummyObject());
            Assert.AreEqual(expected, result);
        }
    }
}