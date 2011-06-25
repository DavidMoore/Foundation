using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using Microsoft.Build.Framework;

namespace Foundation.Build.MSBuild
{
    public class ReadAssemblyInfo : Microsoft.Build.Utilities.Task
    {
        const string propertyRegex = "^[\\[<][aA]ssembly: ([^(]+)\\(\"([^\"]*)\"\\)[\\]>]";

        public override bool Execute()
        {
            var file = new FileInfo(AssemblyInfoFile.GetMetadata("FullPath"));

            if(!file.Exists) throw new FileNotFoundException("Assembly info file not found", file.FullName);
            
            // Read in the contents
            var lines = File.ReadAllText(file.FullName);

            var regex = new Regex(propertyRegex, RegexOptions.IgnoreCase | RegexOptions.Multiline);

            // Load in the matches
            foreach (var match in regex.Matches(lines).Cast<Match>())
            {
                var name = match.Groups[1].Value;
                var value = match.Groups[2].Value;

                Log.LogMessage(MessageImportance.Low, "Setting {0} to \"{1}\"", name, value);
                AssemblyInfoFile.SetMetadata(name, value);
            }

            return true;
        }

        [Required, Output]
        public ITaskItem AssemblyInfoFile { get; set; }
    }
}