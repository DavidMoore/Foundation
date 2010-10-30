using System;
using System.IO;

namespace Foundation.Build.MSBuild
{
    public static class VisualStudio6Utility
    {
        static string GetVisualStudio6Path()
        {
            var visualStudio6Path = Environment.ExpandEnvironmentVariables(@"%ProgramFiles%\Microsoft Visual Studio");

            //using (var vb6PathKey = Registry.CurrentUser.OpenSubKey(@"Software\Microsoft\Devstudio\6.0\Directories"))
            //{
            //    if (vb6PathKey != null)
            //    {
            //        var pathFromRegistry = vb6PathKey.GetValue("Install Dirs") as string;
            //        if (pathFromRegistry != null) visualStudio6Path = pathFromRegistry;
            //    }
            //}

            return visualStudio6Path;
        }

        public static string GetVisualBasic6Path()
        {
            var basePath = Path.Combine(GetVisualStudio6Path(), @"VB98\VB6.EXE" );
            return basePath;
        }

        public static string GetVisualC6Path()
        {
            var basePath = Path.Combine(GetVisualStudio6Path(), @"COMMON\MSDev98\Bin\MSDEV.COM");
            return basePath;
        }
    }
}