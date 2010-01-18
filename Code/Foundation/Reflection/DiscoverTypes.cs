using System.IO;

namespace Foundation.Reflection
{
    public static class DiscoverTypes
    {
        public static ITypeDiscovery FromDirectory(DirectoryInfo directory)
        {
            return new TypeDiscovery( new DirectoryAssemblyDiscovery(directory) );
        }
    }
}
