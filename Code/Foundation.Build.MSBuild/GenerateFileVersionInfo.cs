using System;
using System.Diagnostics;
using System.IO;
using System.Text;
using Foundation.Build.MSBuild.Properties;
using Foundation.ExtensionMethods;
using Microsoft.Build.Framework;
using Microsoft.Build.Utilities;
using Microsoft.Win32;

namespace Foundation.Build.MSBuild
{
    public class GenerateFileVersionInfo : Task
    {
        const string resourceCompilerRelativePath = @"bin\rc.exe";

        public override bool Execute()
        {
            Log.LogMessage("Generating resource file: {0}", OutputPath.GetMetadata("FullPath"));

            // Define all the variables for the file version information.
            var sb = new StringBuilder();

            var fileVersionValue = new Version(FileVersion);
            var productVersionValue = new Version(ProductVersion);
            var fileType = FileType.IsNullOrEmpty() ? MSBuild.FileType.Dll : (FileType) Enum.Parse(typeof (FileType), FileType);
 
            sb.AppendFormat("#define ISDEBUG {0}", IsDebug ? 1 : 0).AppendLine()
            .AppendFormat("#define ISPRERELEASE {0}", IsPreRelease ? 1 : 0).AppendLine()
            .AppendFormat("#define ISSPECIALBUILD {0}", IsSpecialBuild ? 1 : 0).AppendLine()
            .AppendFormat("#define ISPRIVATEBUILD {0}", IsPrivateBuild ? 1 : 0).AppendLine()
            .AppendFormat("#define ISPATCHED {0}", IsPatched ? 1 : 0).AppendLine()
            .AppendFormat("#define FILEVERSIONBINARY {0},{1},{2},{3}", fileVersionValue.Major, fileVersionValue.Minor, fileVersionValue.Build, fileVersionValue.Revision).AppendLine()
            .AppendFormat("#define FILEVERSIONSTRING \"{0}\\0\"", fileVersionValue).AppendLine()
            .AppendFormat("#define PRODUCTVERSIONBINARY {0},{1},{2},{3}", productVersionValue.Major, productVersionValue.Minor, productVersionValue.Build, productVersionValue.Revision).AppendLine()
            .AppendFormat("#define PRODUCTVERSIONSTRING \"{0}\\0\"", ProductVersion).AppendLine()
            .AppendFormat("#define COMPANYNAMESTRING \"{0}\\0\"", Company).AppendLine()
            .AppendFormat("#define INTERNALNAMESTRING \"{0}\\0\"", InternalName).AppendLine()
            .AppendFormat("#define COPYRIGHTSTRING \"{0}\\0\"", Copyright).AppendLine()
            .AppendFormat("#define ORIGINALFILENAMESTRING \"{0}\\0\"", OriginalFileName).AppendLine()
            .AppendFormat("#define PRODUCTNAMESTRING \"{0}\\0\"", ProductName).AppendLine()
            .AppendFormat("#define FILEDESCRIPTIONSTRING \"{0}\\0\"", FileDescription).AppendLine()
            .AppendFormat("#define FILETYPEVALUE {0}", (int)fileType).AppendLine()
            .AppendFormat("#define SPECIALBUILDSTRING \"{0}\\0\"", SpecialBuildDescription).AppendLine()
            .AppendFormat("#define PRIVATEBUILDSTRING \"{0}\\0\"", PrivateBuildDescription).AppendLine();

            if (!ManifestFile.IsNullOrEmpty()) sb.AppendFormat("#define MANIFESTFILEPATH \"{0}\\0\"", CString(ManifestFile) ).AppendLine();
            if (IconFile != null && fileType == MSBuild.FileType.Application) sb.AppendFormat("#define ICONFILEPATH \"{0}\"", CString(IconFile.GetMetadata("FullPath"))).AppendLine();

            if (!AssemblyVersion.IsNullOrEmpty()) sb.AppendFormat("#define ASSEMBLYVERSIONSTRING \"{0}\\0\"", AssemblyVersion).AppendLine();

            // Add the guts of the resource file script, which uses the variables we
            // just declared to define the file version information and embed the manifest if applicable.
            sb.AppendLine(Resources.FileVersionInfo);

            Log.LogMessage(MessageImportance.Low, sb.ToString());
            
            // Create temporary file for the resource script));
            using (var tempFile = new TempFile("FileVersionInfo-" + Guid.NewGuid() + ".rc"))
            {
                // Write out the resource script contents
                tempFile.WriteAllText(sb.ToString());

                var compilerLocation = GetResourceCompilerLocation();

                // Compile the resource file
                var processStartInfo = new ProcessStartInfo(Path.Combine(compilerLocation, resourceCompilerRelativePath))
                {
                    UseShellExecute = false,
                    RedirectStandardOutput = true,
                    RedirectStandardError = true,
                    Arguments = string.Format("/D _UNICODE /D UNICODE /l\"0x0409\" /nologo /fo\"{0}\" \"{1}\"",
                    OutputPath.GetMetadata("FullPath"), tempFile.FileInfo.FullName),
                    WindowStyle = ProcessWindowStyle.Hidden,
                    CreateNoWindow = true
                };

                Log.LogMessage("Executing: {0} {1}", processStartInfo.FileName, processStartInfo.Arguments);

                using (var process = Process.Start(processStartInfo))
                {
                    process.WaitForExit();

                    string output = process.StandardOutput.ReadToEnd();
                    if (output.Length > 0) Log.LogMessage(MessageImportance.Normal, output);

                    string errorStream = process.StandardError.ReadToEnd();
                    if (errorStream.Length > 0) Log.LogError(errorStream);

                    if (process.ExitCode == 0) return true;

                    Log.LogError("Non-zero exit code from rc.exe: " + process.ExitCode);

                    return false;
                }
            }
        }

        /// <summary>
        /// To format a C-string, escape the escape-code character '\'.
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        string CString(string value)
        {
            var parsedValue = value.Replace("\\", @"\\\\");
            Log.LogMessage(MessageImportance.Low, "Replacing {0} with {1}", value, parsedValue);
            return parsedValue;
        }

        public string AssemblyVersion { get; set; }

        string GetResourceCompilerLocation()
        {
            if (ResourceCompilerLocation != null)
            {
                var path = ResourceCompilerLocation.GetMetadata("FullPath");
                if (string.IsNullOrEmpty(path) || !Directory.Exists(path)) throw new FileNotFoundException("The ResourceCompilerLocation path is not a valid directory", path);
                return path;
            }

            using (var key = Registry.LocalMachine.OpenSubKey(@"Software\Microsoft\Microsoft SDKs\Windows"))
            {
                if( key == null) throw new FoundationException("Couldn't find Microsoft SDK Registry Key");                
                var pathFromRegistry = key.GetValue("CurrentInstallFolder") as string;
                if (pathFromRegistry == null) throw new FoundationException("Couldn't find Microsoft SDK CurrentInstallFolder registry key");
                return pathFromRegistry;
            }
        }

        /// <summary>
        /// Gets or sets the output path for the generated resource file.
        /// </summary>
        /// <value>
        /// The output path for the generated resource file.
        /// </value>
        [Required]
        public ITaskItem OutputPath { get; set; }

        public ITaskItem IconFile { get; set; }
        
        public string FileType { get; set; }

        [Required]
        public string FileVersion { get; set; }

        [Required]
        public string ProductVersion { get; set; }

        [Required]
        public string ProductName { get; set; }

        [Required]
        public string FileDescription { get; set; }

        public bool IsPreRelease { get; set; }

        public bool IsSpecialBuild { get; set; }

        public bool IsPrivateBuild { get; set; }

        public ITaskItem ResourceCompilerLocation { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether the file has been modified and
        /// is not identical to the original shipping file of the same version number.
        /// </summary>
        /// <value>
        /// 	<c>true</c> if the file is patched; otherwise, <c>false</c>.
        /// </value>
        public bool IsPatched { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether the file contains
        /// debugging information or is compiled with debugging features enabled.
        /// </summary>
        /// <value>
        ///   <c>true</c> if this file is a debug build; otherwise, <c>false</c>.
        /// </value>
        public bool IsDebug { get; set; }

        public string PrivateBuildDescription { get; set; }
        public string SpecialBuildDescription { get; set; }

        /// <summary>
        /// Gets or sets the path to a manifest file to embed in the resource.
        /// </summary>
        /// <value>
        /// Path to the manifest file to embed in the resource. Leave <c>null</c>
        /// to not embed a manifest.
        /// </value>
        public string ManifestFile { get; set; }

        public string Company { get; set; }
        public string InternalName { get; set; }
        public string Copyright { get; set; }
        public string OriginalFileName { get; set; }
    }

    public enum FileType
    {
        Unknown = 0,
        Application = 1,
        Dll = 2
    }
}
