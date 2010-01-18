using System;
using System.Collections.Generic;
using System.Reflection;

namespace Foundation.Reflection
{
    public interface IAssemblyDiscovery : IDisposable
    {
        IEnumerable<Assembly> Assemblies { get; }
    }
}