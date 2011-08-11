using System.Diagnostics;
using VisualBasic6.Core.Converter;
using Con=System.Console;

namespace Converter.Console
{
    class Program
    {
        const string usage = @"
Usage: VisualBasic6.Console.exe <project filename>

<project filename> - The filename of the VB6 project to convert.

";

        static int Main(string[] args)
        {
            if (args.Length < 1)
            {
                DisplayUsage();
                return Exit(1);
            }

            // Read in the project
            var reader = new VB6ProjectReader();
            var project = reader.Parse(args[0]);

            // Convert the project
            var converter = new ProjectConverter();
            converter.Convert(project);
            
            return Exit(0);
        }

        private static int Exit(int returnCode)
        {
            if (Debugger.IsAttached) Con.ReadLine();
            return returnCode;
        }

        private static void DisplayUsage()
        {
            Con.WriteLine(usage);
        }
    }
}