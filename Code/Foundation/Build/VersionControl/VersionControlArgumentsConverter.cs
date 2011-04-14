using System;
using Foundation.Build.VersionControl;

namespace Foundation.Tests.Build.VersionControl
{
    public static class VersionControlArgumentsConverter
    {
        public static VersionControlArguments FromUri(Uri uri)
        {
            if (uri == null) throw new ArgumentNullException("uri");

            throw new NotImplementedException();
        }
    }
}