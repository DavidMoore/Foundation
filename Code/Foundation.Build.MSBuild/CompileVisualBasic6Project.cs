using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
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
        public ITaskItem[] Projects { get; set; }

        /// <summary>
        /// Gets or sets the reference paths.
        /// </summary>
        /// <value>The reference paths.</value>
        public ITaskItem[] ReferencePaths { get; set; }

        /// <summary>
        /// Gets or sets the output directory.
        /// </summary>
        /// <value>The output directory.</value>
        public ITaskItem OutputDirectory { get; set; }

        /// <summary>
        /// Gets or sets the property overrides.
        /// </summary>
        /// <value>The property overrides.</value>
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

    public class VisualBasicProject
    {
        readonly FileInfo projectFile;
        IEnumerable<string> lines;

        public VisualBasicProject(FileInfo projectFile)
        {
            this.projectFile = projectFile;
            ParseFile();
        }

        void ParseFile()
        {
            // Read in all the lines
            lines = File.ReadAllLines(projectFile.FullName);
        }

        public string GetValue(string key)
        {
            return GetValues(key).FirstOrDefault();
        }

        IEnumerable<string> GetValues(string key)
        {
            return lines.Where(s => s.StartsWith(key + "=")).Select( line => line.Substring(line.IndexOf('=') + 1).Trim().Replace("\"", string.Empty));
        }

        public void Save()
        {
            File.WriteAllLines(projectFile.FullName, lines, Encoding.ASCII);
        }

        /// <summary>
        /// Updates the references in the file to point to
        /// assemblies that we find in the reference path(s). This ensures
        /// we can build without having to register COM components, and also
        /// reference particular versions.
        /// </summary>
        public void UpdateReferences(IEnumerable<DirectoryInfo> referencePaths)
        {
            // Reference=*\G{00020430-0000-0000-C000-000000000046}#2.0#0#C:\Windows\SysWOW64\stdole2.tlb#OLE Automation
            // Reference=*\G{CD9754D4-9C08-4877-ACE7-EAB739D7EBF2}#1.0#0#..\wsiEvents\wsiEvents.dll#wsiEvents

            var results = new List<string>();

            foreach (var line in lines)
            {
                var key = GetKey(line);

                if( key != null && key.Equals("Reference"))
                {
                    // Split the reference into its parts, delimited by #
                    // 0 = GUID
                    // 1 = Version
                    // 2 = ?
                    // 3 = Path and filename
                    // 4 = Name
                    var referenceParts = GetLineValue(line).Split(new[] { '#' }, StringSplitOptions.None);

                    var filename = Path.GetFileName(referenceParts[3]);

                    // If we can find the referenced file in our reference paths, then update the reference.
                    var referencePath = referencePaths.FirstOrDefault(path => path.EnumerateFiles(filename).SingleOrDefault() != null);
                    if (referencePath == null)
                    {
                        results.Add(line);
                    }
                    else
                    {
                        referenceParts[3] = Path.Combine(referencePath.FullName, filename);
                        results.Add(key + "=" + string.Join("#", referenceParts));
                    }
                }
                else if (key != null && key.Equals("CodeViewDebugInfo"))
                {
                    results.Add("CodeViewDebugInfo=-1");
                }
                else
                {
                    results.Add(line);
                }
            }

            lines =  results;
        }

        static string GetKey(string line)
        {
            if( string.IsNullOrWhiteSpace(line) ) return null;

            var delimiterLocation = line.IndexOf('=');

            if( delimiterLocation < 0) return null;

            return line.Substring(0, line.IndexOf('='));
        }

        static string GetLineValue(string line)
        {
            return line.Substring(line.IndexOf('=') + 1).Trim().Replace("\"", string.Empty);
        }

        public void UpdateProperties(string propertyOverrides, ITaskItem project)
        {
            if (string.IsNullOrWhiteSpace(propertyOverrides)) return;

            var overrides = propertyOverrides.Trim().Split(new[] {';'}, StringSplitOptions.RemoveEmptyEntries);

            var properties = new Dictionary<string, string>();

            foreach (var propertyOverride in overrides)
            {
                var parts = propertyOverride.Trim().Split(new[] {'='});
                if (parts.Length < 2) continue;

                var key = parts[0].Trim();
                var value = parts[1].Trim();

                properties[key] = value;
            }

            // Scan meta data for project-specific overrides
            var metaDataNames = project.MetadataNames;
            foreach (string metaDataName in metaDataNames)
            {
                properties[metaDataName] = project.GetMetadata(metaDataName);
            }

            var results = new List<string>(lines.Count());

            // Now process each line in the file
            foreach (var line in lines)
            {
                var key = GetKey(line);

                if (key != null && properties.ContainsKey(key))
                {
                    results.Add( key + "=" + properties[key] );
                }
                else
                {
                    results.Add(line);
                }
            }

            lines = results;
        }
    }
}