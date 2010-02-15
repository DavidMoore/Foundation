using System.Collections.Generic;
using System.Reflection;

namespace Foundation.Services.Discovery
{
    /// <summary>
    /// Enumerates assemblies from a source
    /// </summary>
    public interface IAssemblySource
    {
        /// <summary>
        /// Collection of assemblies discovered in the source
        /// </summary>
        IEnumerable<Assembly> Assemblies { get; }
    }
}