using System.IO;
using Foundation.Services;
using Foundation.Web.JavaScript;
using Newtonsoft.Json;
using NUnit.Framework;
using JsonSerializer=Newtonsoft.Json.JsonSerializer;
using JsonTextWriter=Foundation.Web.JavaScript.JsonTextWriter;

namespace Foundation.Tests.Services
{
    [TestFixture]
    public class JavaScriptSerializerTests
    {
        [JavaScriptObject(Prefix = "thePrefix", Suffix = "theSuffix")]
        internal class TestClass
        {
            public string StringValue { get; set; }
        }

        internal class TestClass2 : ISerializableToJavaScript
        {
            public string StringValue { get; set; }

            public void SerializeToJavaScript(JsonSerializer serializer, JsonWriter writer)
            {
                writer.WriteRaw("thePrefix");
                serializer.Serialize(writer, this);
                writer.WriteRaw("theSuffix");
            }
        }

        [Test]
        public void Prefix_and_suffix()
        {
            var serializer = new JavaScriptSerializer();

            using( var stringWriter = new StringWriter() )
            {
                var jsonWriter = new JsonTextWriter(stringWriter);

                var test = new TestClass {StringValue = "StringValue"};
                serializer.Serialize(jsonWriter, test);
                Assert.AreEqual("thePrefix{\"StringValue\":\"StringValue\"}theSuffix", stringWriter.GetStringBuilder().ToString());
            }
        }

        [Test]
        public void SerializeToJavaScript()
        {
            var result = new Web.JavaScript.JsonSerializer().Serialize(new TestClass2 {StringValue = "StringValue"});
            Assert.AreEqual("thePrefix{\"StringValue\":\"StringValue\"}theSuffix", result);
        }
    }
}