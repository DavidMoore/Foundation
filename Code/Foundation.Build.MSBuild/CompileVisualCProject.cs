using System;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using Microsoft.Build.Framework;
using Microsoft.Build.Utilities;

namespace Foundation.Build.MSBuild
{
    public class CompileVisualCProject : Task
    {
        /// <summary>
        /// Gets or sets the projects to compile.
        /// </summary>
        /// <value>The projects.</value>
        [Required]
        public ITaskItem[] Projects { get; set; }

        /// <summary>
        /// Gets or sets the output directory.
        /// </summary>
        /// <value>The output directory.</value>
        [Required]
        public ITaskItem OutputDirectory { get; set; }

        /// <summary>
        /// Gets or sets the property overrides.
        /// </summary>
        /// <value>The property overrides.</value>
        [Required]
        public string PropertyOverrides { get; set; }

        public override bool Execute()
        {
            // MSDEV.COM (Visual C++ 6.0) command line: http://msdn.microsoft.com/en-us/library/aa699274(VS.60).aspx
            
            var visualC6Path = VisualStudio6Utility.GetVisualC6Path();

            var processStartInfo = new ProcessStartInfo(visualC6Path)
            {
                UseShellExecute = false,
                RedirectStandardOutput = true,
                RedirectStandardError = true
            };

            // Get the full path to the output directory
            var outputDirectory = new DirectoryInfo(OutputDirectory.GetMetadata("FullPath"));

            foreach (var projectItem in Projects)
            {
                var projectFile = new FileInfo(projectItem.GetMetadata("FullPath"));
                if (!projectFile.Exists) throw new FileNotFoundException("Project file not found.", projectFile.FullName);
                
                var configuration = projectItem.GetMetadata("Configuration");
                if (configuration == null) throw new InvalidOperationException("Please specify the Configuration meta data property for the project " + projectFile.FullName);

                var resourceFileMetaData = projectItem.GetMetadata("ResourceFile");
                if (resourceFileMetaData == null) throw new InvalidOperationException("Please specify the ResourceFile meta data property for the project " + projectItem);

                var file = new FileInfo(resourceFileMetaData);
                if (!file.Exists) throw new FileNotFoundException("Cannot find resource file: ", file.FullName);

                var binaryFileMetaData = projectItem.GetMetadata("BinaryPath");
                if (binaryFileMetaData == null) throw new InvalidOperationException("Please specify the BinaryPath meta data property for the project " + projectItem);

                var projectFileLog = new FileInfo(projectFile.FullName + ".log");
                
                var resourceFile = new VisualCResourceFile(file);

                // Update properties in the resource file with the overrides
                resourceFile.UpdateProperties(PropertyOverrides, projectItem, Log);
                
                processStartInfo.Arguments = string.Format(" \"{0}\" /OUT \"{1}\" /MAKE \"{2}\" /REBUILD", projectFile.FullName, projectFileLog.FullName, configuration);

                using (var process = Process.Start(processStartInfo))
                {
                    process.WaitForExit();

                    string output = process.StandardOutput.ReadToEnd();
                    if (output.Length > 0) Log.LogMessage(MessageImportance.Normal, output);

                    string errorStream = process.StandardError.ReadToEnd();
                    if (errorStream.Length > 0) Log.LogError(errorStream);

                    if (process.ExitCode == 0)
                    {
                        // Get the binary file
                        var binary = new FileInfo(Path.Combine(projectFile.DirectoryName, binaryFileMetaData));

                        // Ensure the destination folder exists
                        if (!outputDirectory.Exists) outputDirectory.Create();

                        File.Copy(binary.FullName, Path.Combine(outputDirectory.FullName, binary.Name), true);

                        var debugSymbols = new FileInfo(Path.ChangeExtension(binary.FullName, ".pdb"));
                        File.Copy(debugSymbols.FullName, Path.Combine(outputDirectory.FullName, debugSymbols.Name), true);

                        continue;
                    }

                    Log.LogError("Non-zero exit code from devenv.com: " + process.ExitCode);

                    try
                    {
                        Log.LogError(File.ReadAllText(projectFileLog.FullName));
                    }
                    catch (Exception ex)
                    {
                        Log.LogError(string.Format(CultureInfo.CurrentUICulture, "Unable to open log file: '{0}'. Exception: {1}", projectFileLog.FullName, ex.Message));
                    }
                    return false;
                }
            }

            return true;
        }
    }
}