using System;
using System.IO;
using Foundation.ExtensionMethods;
using Foundation.Windows;

namespace Foundation.Build
{
    /// <summary>
    /// Reads or writes named streams to and from PDB files.
    /// </summary>
    public class PdbStr : ProcessWrapper
    {
        readonly static string defaultPdbStrFilename = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles),
            @"Debugging Tools for Windows (x86)\srcsrv\PdbStr.exe");

        /// <summary>
        /// Initializes a new instance of the <see cref="PdbStr"/> class.
        /// </summary>
        public PdbStr() : base(defaultPdbStrFilename)
        {
            Operation = PdbStrOperation.Read;
            StartInfo.WorkingDirectory = Path.GetDirectoryName(StartInfo.FileName);
        }

        /// <summary>
        /// Builds the arguments.
        /// </summary>
        internal protected override void BuildArguments()
        {
            base.BuildArguments();

            // Read or write?
            switch (Operation)
            {
                case PdbStrOperation.Read:
                    StartInfo.Arguments += "-r ";
                    break;
                case PdbStrOperation.Write:
                    StartInfo.Arguments += "-w ";
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }

            if (!PdbFileName.IsNullOrEmpty())
            {
                StartInfo.Arguments += "-p:\"" + PdbFileName + "\" ";
            }

            if (!StreamFileName.IsNullOrEmpty())
            {
                StartInfo.Arguments += "-i:\"" + StreamFileName + "\" ";
            }

            if (!StreamName.IsNullOrEmpty())
            {
                StartInfo.Arguments += "-s:" + StreamName + " ";
            }

            StartInfo.Arguments = StartInfo.Arguments.Trim();
        }

        /// <summary>
        /// Gets or sets the operation to perform on the PDB
        /// (whether to read or write a stream).
        /// </summary>
        /// <value>
        /// The operation to perform on the PDB.
        /// </value>
        public PdbStrOperation Operation { get; set; }

        /// <summary>
        /// Gets or sets the PDB filename.
        /// </summary>
        /// <value>
        /// The PDB filename.
        /// </value>
        public string PdbFileName { get; set; }

        /// <summary>
        /// Gets or sets the filename of the text file with the
        /// stream contents to write to the PDB.
        /// </summary>
        /// <value>
        /// The filename of the stream text file.
        /// </value>
        public string StreamFileName { get; set; }

        /// <summary>
        /// Gets or sets the name of the stream to read or write.
        /// </summary>
        /// <value>
        /// The name of the stream to read or write.
        /// </value>
        public string StreamName { get; set; }
    }
}