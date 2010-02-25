using System;
using System.Reflection;

[assembly: AssemblyProduct("Foundation .NET Library")]
[assembly: AssemblyCompany("David Moore")]
[assembly: AssemblyCopyright("Copyright © David Moore 2010")]
[assembly: AssemblyInformationalVersion("1.0.0.0")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: CLSCompliant(true)]

#if DEBUG
[assembly: AssemblyConfiguration("Debug")]
#else
[assembly: AssemblyConfiguration("Release")]
#endif