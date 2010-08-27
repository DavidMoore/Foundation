using System.Collections.Generic;
using System.Reflection;

namespace Foundation.Services.Discovery
{
    /// <summary>
    /// Enumerates a collection of passed assemblies
    /// </summary>
    public class AssemblySource : IAssemblySource
    {
        readonly Assembly[] assemblies;

        public AssemblySource(params Assembly[] assemblies)
        {
            this.assemblies = assemblies;
        }

        /// <summary>
        /// Collection of assemblies discovered in the source
        /// </summary>
        public IEnumerable<Assembly> Assemblies
        {
            get { return assemblies; }
        }
    }
}