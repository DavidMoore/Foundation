using Newtonsoft.Json;
using NUnit.Framework;
using JsonSerializer=Foundation.Services.JsonSerializer;

namespace Foundation.Tests.Services
{
    [TestFixture]
    public class JsonSerializerFixture
    {
        [JsonObject(MemberSerialization.OptIn)]
        internal class DummyObject
        {
            public string invisible;

            [JsonProperty] public string visible;
        }

        [Test]
        public void Deserialize()
        {
            string expectedSerialized = "{\"visible\":\"visible\"}";
            var dummy = new DummyObject {invisible = "invisible", visible = "visible"};
            var serializer = new JsonSerializer();
            string serialized = serializer.Serialize(dummy);
            Assert.AreEqual(expectedSerialized, serialized);

            var result = serializer.Deserialize<DummyObject>(serialized);
            Assert.AreEqual("visible", result.visible);
        }

        [Test]
        public void Serialize()
        {
            const string expected = "{\"visible\":null}";
            string result = new JsonSerializer().Serialize(new DummyObject());
            Assert.AreEqual(expected, result);
        }
    }
}