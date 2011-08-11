using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Foundation.ExtensionMethods;
using Microsoft.Build.Framework;

namespace Foundation.Build.MSBuild
{
    public class VisualBasicProject
    {
        readonly FileInfo projectFile;
        IEnumerable<string> lines;

        public VisualBasicProject(FileInfo projectFile)
        {
            this.projectFile = projectFile;
            ParseFile();
        }

        /// <summary>
        /// Updates the references in the file to point to
        /// assemblies that we find in the reference path(s). This ensures
        /// we can build without having to register COM components, and also
        /// reference particular versions.
        /// </summary>
        public void UpdateReferences(IEnumerable<DirectoryInfo> referencePaths)
        {
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
                    if (filename == null) throw new InvalidOperationException("Couldn't get the filename from the path: " + referenceParts[3]);

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

        static string GetLineValue(string line)
        {
            return line.Substring(line.IndexOf('=') + 1).Trim().Replace("\"", string.Empty);
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

        public IEnumerable<string> GetValues(string key)
        {
            return lines.Where(s => s.StartsWith(key + "="))
                .Select( line => line.Substring(line.IndexOf('=') + 1)
                                     .Trim().Replace("\"", string.Empty));
        }

        public void Save()
        {
            File.WriteAllLines(projectFile.FullName, lines, Encoding.ASCII);
        }

        static string GetKey(string line)
        {
            if( string.IsNullOrWhiteSpace(line) ) return null;

            var delimiterLocation = line.IndexOf('=');

            if( delimiterLocation < 0) return null;

            return line.Substring(0, line.IndexOf('='));
        }

        public void UpdateProperties(string propertyOverrides, ITaskItem project)
        {
            if (string.IsNullOrWhiteSpace(propertyOverrides)) return;

            var properties = propertyOverrides.ToDictionary(';', '=');
            
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

        public static string GetFileNameFromReference(string reference)
        {
            if (reference == null) throw new ArgumentNullException("reference");

            // Split the reference into its parts, delimited by #
            // 0 = GUID
            // 1 = Version
            // 2 = ?
            // 3 = Path and filename
            // 4 = Name
            var referenceParts = reference.Trim()
                .Split(new[] { '#', ';' }, StringSplitOptions.None)
                .Select(s => s.Trim())
                .ToArray();

            var value = referenceParts[3];

            var filename = Path.GetFileName(value);
            if (filename == null) throw new InvalidOperationException("Couldn't get the filename from the path: " + value);

            return filename;
        }

        public static IEnumerable<string> HarvestReferences(string visualBasicProjectLines)
        {
            return HarvestReferences(visualBasicProjectLines.Split('\n'));
        }

        public static IEnumerable<string> HarvestReferences(IEnumerable<string> visualBasicProjectLines)
        {
            return visualBasicProjectLines.Where(s => s.StartsWith("Reference="))
                .Select(GetFileNameFromReference);
        }

        public static IEnumerable<string> HarvestComponents(string visualBasicProjectLines)
        {
            return HarvestComponents(visualBasicProjectLines.Split('\n'));
        }

        public static IEnumerable<string> HarvestComponents(IEnumerable<string> visualBasicProjectLines)
        {
            return visualBasicProjectLines.Where(s => s.StartsWith("Object="))
                .Select(GetFileNameFromReference);
        }
    }
}