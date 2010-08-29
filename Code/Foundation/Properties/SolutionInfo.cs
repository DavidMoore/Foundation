using System;
using System.Reflection;
using System.Runtime.CompilerServices;

[assembly: AssemblyProduct("Foundation .NET Library")]
[assembly: AssemblyCompany("David Moore")]
[assembly: AssemblyCopyright("Copyright © David Moore 2010")]
[assembly: AssemblyInformationalVersion("1.0.0.0")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: CLSCompliant(true)]
[assembly: InternalsVisibleTo("Foundation.Tests, PublicKey=002400000480000094000000060200000024000052534131000400000100010087d332e80809acf066d0c4360316e881f059f47cfcf432f4882d64d667dc975a5dea3b9e76a8138917979de05b3c94cae5f32c2f14d90ad9d0da56e32bf5d7bbf1d4952bac16233aa13eaf760bcc4c04a81ebcb02a55211c805462cc9ff5b3388874c033b19d2c1577538ee9f898616d9360d9f0ad16e336074a781dc3bca3bf")]

#if DEBUG
[assembly: AssemblyConfiguration("Debug")]
#else
[assembly: AssemblyConfiguration("Release")]
#endif