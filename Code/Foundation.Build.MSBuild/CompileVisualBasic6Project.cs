using System;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using Microsoft.Build.Framework;
using Microsoft.Build.Utilities;

namespace Foundation.Build.MSBuild
{
    /// <summary>
    /// Compiles a Visual Basic 6 project.
    /// </summary>
    public class CompileVisualBasic6Project : Task
    {
        /// <summary>
        /// Gets or sets the projects to compile.
        /// </summary>
        /// <value>The projects.</value>
        [Required]
        public ITaskItem[] Projects { get; set; }

        /// <summary>
        /// Gets or sets the reference paths.
        /// </summary>
        /// <value>The reference paths.</value>
        [Required]
        public ITaskItem[] ReferencePaths { get; set; }

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

        /// <summary>
        /// When overridden in a derived class, executes the task.
        /// </summary>
        /// <returns>
        /// true if the task successfully executed; otherwise, false.
        /// </returns>
        public override bool Execute()
        {
            var vb6Path = VisualStudio6Utility.GetVisualBasic6Path();
            
            var processStartInfo = new ProcessStartInfo(vb6Path)
                                       {
                                           UseShellExecute = false,
                                           RedirectStandardOutput = true,
                                           RedirectStandardError = true
                                       };

//            var path = processStartInfo.EnvironmentVariables["PATH"];
//
            // Update the PATH to include reference paths
//            path = ReferencePaths.Aggregate(path, (current, referencePath) => referencePath.GetMetadata("FullPath") + ";" + current);
//
//            processStartInfo.EnvironmentVariables["PATH"] = path;

            // Get the full path to the output directory
            var outputDirectory = new DirectoryInfo( OutputDirectory.GetMetadata("FullPath") );

            foreach(var projectItem in Projects)
            {
                var projectFile = new FileInfo(projectItem.GetMetadata("FullPath"));
                if (projectFile.DirectoryName == null) throw new FileNotFoundException("Project has no DirectoryName", projectFile.FullName);

                var projectFileLog = new FileInfo(projectFile.FullName + ".log");

                var project = new VisualBasicProject(projectFile);

                // Update references
                project.UpdateReferences( ReferencePaths.Select(path => new DirectoryInfo( path.GetMetadata("FullPath"))) );
                project.UpdateProperties(PropertyOverrides, projectItem);
                project.Save();

                processStartInfo.Arguments = string.Format("/MAKE /OUT \"{0}\" \"{1}\"", projectFileLog.FullName, projectFile.FullName);

                using (var process = Process.Start(processStartInfo))
                {
                    if( process == null) throw new InvalidOperationException("Process could not be started");

                    process.WaitForExit();
                    
                    string output = process.StandardOutput.ReadToEnd();
                    if (output.Length > 0) Log.LogMessage(MessageImportance.Normal, output);
                    
                    string errorStream = process.StandardError.ReadToEnd();
                    if (errorStream.Length > 0) Log.LogError(errorStream);

                    if (process.ExitCode == 0)
                    {
                        // Get the binary file
                        var binary = new FileInfo(Path.Combine(projectFile.DirectoryName, project.GetValue("ExeName32")));

                        File.Copy(binary.FullName, Path.Combine(outputDirectory.FullName, binary.Name), true);
                        
                        var debugSymbols = new FileInfo(Path.ChangeExtension(binary.FullName, ".pdb"));
                        File.Copy(debugSymbols.FullName, Path.Combine(outputDirectory.FullName, debugSymbols.Name), true);

                        continue;
                    }

                    Log.LogError("Non-zero exit code from VB6.exe: " + process.ExitCode);

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