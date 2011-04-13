using System;
using System.Collections.Generic;
using Foundation.ExtensionMethods;
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
            foreach (var item in Symbols)
            {
                var path = item.GetMetadata("FullPath");

                var srcTool = new SrcTool(path);

                srcTool.GetSourceFiles().ForEach( file => Log.LogMessage(file) );
            }

            return true;
        }

        /// <summary>
        /// Gets or sets the collection of symbols to index the source for.
        /// </summary>
        /// <value>
        /// The symbols.
        /// </value>
        public ITaskItem[] Symbols { get; set; }
    }
}
