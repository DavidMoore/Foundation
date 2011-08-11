using System;
using System.IO;
using System.Linq;
using System.Text;
using Foundation.Build.VersionControl;
using Foundation.Build.VersionControl.Vault;
using Foundation.ExtensionMethods;
using Foundation.Windows;
using Microsoft.Build.Framework;
using Microsoft.Build.Utilities;

namespace Foundation.Build.MSBuild
{
    public class IndexSymbolSources : Task
    {
        /// <summary>
        /// When overridden in a derived class, executes the task.
        /// </summary>
        /// <returns>
        /// <c>true</c> if the task successfully executed; otherwise, <c>false</c>.
        /// </returns>
        public override bool Execute()
        {
            // Get the version control arguments, which are in the form of a URI
            var uri = new Uri(VersionControlArguments);

            if( Symbols == null )
            {
                Log.LogWarning("No symbol files passed to index");
                return true;
            }

            var vaultExecutable = VcsExecutablePath;

            var args = VersionControlArgumentsConverter.FromUri(uri);
            
            foreach (var item in Symbols)
            {
                var path = item.GetMetadata("FullPath");

                Log.LogMessage("Indexing source in file: {0}", path);

                var srcTool = new SrcTool(path);

                // Obtain a list of source files to index
                var files = srcTool.GetSourceFiles();
                files.ForEach( file => Log.LogMessage(MessageImportance.Low, "Source file: {0}", file) );

                // We'll write the SrcSrv stream to a temporary file, and that
                // will be passed to write to the debug symbols.
                var sb = new StringBuilder();

                var provider = new VaultVersionControlProvider(vaultExecutable);

                var indexer = new SourceIndexer(provider, args);

                sb.Append(indexer.GetIniBlock());
                sb.Append(indexer.GetVariableBlock());

                sb.AppendLine("SRCSRV: source files ---------------------------------------");

                var indexedFiles = files.Select(indexer.GetVersionIndexForFile).Where(line => !line.IsNullOrEmpty());

                // If we didn't manage to index any files, then move on to the next file
                if( indexedFiles.Count() == 0)
                {
                    Log.LogMessage("No files found to map against version control");
                    continue;
                }

                // Write out any successfully indexed files
                foreach (var line in indexedFiles )
                {
                    sb.AppendLine(line);
                }

                // Done indexing source
                sb.AppendLine("SRCSRV: end ------------------------------------------------");

                var lines = sb.ToString().Trim();

                Log.LogMessage(MessageImportance.Low, lines);

                // Write the stream to a temp file, which we can pass
                // to PdbStr);
                using (var temp = new TempFile())
                {
                    temp.WriteAllText(lines);

                    // Write the stream to the debug symbols
                    using (var pdbStr = new PdbStr())
                    {
                        pdbStr.PdbFilename = path;
                        pdbStr.StreamFilename = temp.FileInfo.FullName;
                        pdbStr.StreamName = "srcsrv";
                        pdbStr.Operation = PdbStrOperation.Write;

                        if(!pdbStr.Start()) throw new FoundationException("Couldn't start PdbStr: {0}", pdbStr.StartInfo.FileName);

                        var result = new ProcessResult(pdbStr);
                        
                        pdbStr.WaitForExit();

                        var output = result.StandardOutput;

                        if (output.ContainsCaseInsensitive("error"))
                        {
                            Log.LogError(output);
                        }
                        else
                        {
                            Log.LogMessage(output);
                        }
                        
                    }
                }
                
            }

            return true;
        }

        /// <summary>
        /// Gets or sets the vault executable path.
        /// </summary>
        /// <value>
        /// The vault executable path.
        /// </value>
        public string VcsExecutablePath { get; set; }

        /// <summary>
        /// Gets or sets the collection of symbols to index the source for.
        /// </summary>
        /// <value>
        /// The symbols.
        /// </value>
        public ITaskItem[] Symbols { get; set; }

        /// <summary>
        /// Gets or sets the version control parameters.
        /// </summary>
        /// <value>
        /// The version control parameters.
        /// </value>
        public string VersionControlArguments { get; set; }
    }
}