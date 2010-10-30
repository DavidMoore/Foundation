using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using Foundation.ExtensionMethods;
using Microsoft.Build.Framework;
using Microsoft.Build.Utilities;

namespace Foundation.Build.MSBuild
{
    public class VisualCResourceFile
    {
        readonly FileInfo resourceFile;

        internal static readonly Regex ValueRegex = new Regex(@"^\s*VALUE\s+""([^""]+)""\s*,\s*""([^\\]+)\\0""\s*$", RegexOptions.Compiled | RegexOptions.IgnoreCase);

        public VisualCResourceFile(FileInfo resourceFile)
        {
            this.resourceFile = resourceFile;
        }

        public void UpdateProperties(string propertyOverrides, ITaskItem project, TaskLoggingHelper log)
        {
            log.LogMessage("Updating properties in file {0}", resourceFile.FullName);

            if (string.IsNullOrWhiteSpace(propertyOverrides)) return;

            var properties = propertyOverrides.ToDictionary(';', '=');

            // Scan meta data for project-specific overrides
            var metaDataNames = project.MetadataNames;
            foreach (string metaDataName in metaDataNames)
            {
                properties[metaDataName] = project.GetMetadata(metaDataName);
            }

            properties.ForEach(pair => log.LogMessage("Property {0}={1}", pair.Key, pair.Value));

            var lines = File.ReadLines(resourceFile.FullName).ToList();
            var results = new List<string>(lines.Count);

            // Now process each line in the file)
            foreach (var line in lines)
            {
                var key = GetKey(line);

                if (key == null)
                {
                    results.Add(line);
                }
                else
                {
                    var isValueKey = false;

                    if (key.Equals("VALUE", StringComparison.OrdinalIgnoreCase))
                    {
                        key = GetValueKey(line);
                        if (string.IsNullOrEmpty(key))
                        {
                            results.Add(line);
                            continue;
                        }
                        
                        isValueKey = true;
                    }

                    if (properties.ContainsKey(key))
                    {
                        log.LogMessage("Setting {0}={1}", key, properties[key]);
                        results.Add(string.Format(isValueKey ? "VALUE \"{0}\", \"{1}\\0\"" : "{0} {1}", key, properties[key]));
                    }
                    else
                    {
                        results.Add(line);
                    }
                }
            }

            File.WriteAllLines(resourceFile.FullName, results);
        }

        static string GetKey(string line)
        {
            if (line.IsNullOrEmpty()) return null;

            line = line.Trim();
            
            var sections = line.Split(new[] {' '}, StringSplitOptions.RemoveEmptyEntries);

            return sections[0];
        }

        static string GetValueKey(string line)
        {
            if (line.IsNullOrEmpty()) return null;

            line = line.Trim();

            var match = ValueRegex.Match(line);

            return !match.Success ? null : match.Groups[1].Value;
        }
    }
}