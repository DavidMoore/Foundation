using System.IO;
using System.Reflection;
using Foundation.ExtensionMethods;

namespace Foundation.Tests.TestHelpers
{
    internal static class ResourceHelper
    {
        const string @namespace = "Foundation.Tests.Resources.";

        internal static void WriteEmbeddedResourceToFile(this FileInfo file, string resourceName)
        {
            using (var stream = file.OpenWrite())
            using (var resourceStream = Assembly.GetExecutingAssembly().GetManifestResourceStream(@namespace + resourceName))
            {
                resourceStream.Write(stream);
            }
        }
    }
}