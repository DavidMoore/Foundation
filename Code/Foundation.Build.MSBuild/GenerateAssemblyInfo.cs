using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Microsoft.Build.Framework;

namespace Foundation.Build.MSBuild
{
    public class GenerateAssemblyInfo : Microsoft.Build.Utilities.Task
    {
        readonly string[] exclusions = new[] { "FullPath", "RootDir", "Filename", "Extension", "RelativeDir", "Directory", "RecursiveDir", "Identity", "ModifiedTime", "CreatedTime", "AccessedTime" };

        readonly string[] namespaces = new []
        {
            "System", "System.Reflection", "System.Runtime.CompilerServices", "System.Runtime.InteropServices"
        };

        public override bool Execute()
        {
            // Scan meta data for assembly properties to apply
            var metaDataNames = OutputPath.MetadataNames;

            var properties = new Dictionary<string, string>();

            foreach (string metaDataName in metaDataNames)
            {
                var name = metaDataName;
                if (exclusions.Any(s => string.Equals(s, name, StringComparison.OrdinalIgnoreCase))) continue;
                properties[metaDataName] = OutputPath.GetMetadata(metaDataName);
            }

            var sb = new StringBuilder();

            // Include the namespaces
            foreach (var @namespace in namespaces)
            {
                sb.AppendFormat("using {0};", @namespace).AppendLine();
            }
            
            // Create the assembly attributes
            foreach (var property in properties)
            {
                sb.AppendLine().AppendFormat("[assembly: {0}({1})]", property.Key, property.Value);
            }

            // Now write to the file
            var file = new FileInfo(OutputPath.GetMetadata("FullPath"));
            File.WriteAllText(file.FullName, sb.ToString(), Encoding.UTF8);

            return true;
        }

        [Required]
        public ITaskItem OutputPath { get; set; }
    }
}