using System;
using System.Collections.Generic;
using System.Runtime.InteropServices.ComTypes;

namespace Foundation.Windows.Com
{
    /// <summary>
    /// Extension methods for <see cref="IRunningObjectTable"/>.
    /// </summary>
    public static class RunningObjectTableExtensions
    {
        /// <summary>
        /// Enumerates the list of monikers of all the objects currently
        /// registered in the running object table (ROT).
        /// </summary>
        /// <param name="rot">The running object table (ROT).</param>
        /// <returns>An enumeration of the monikers of the objects in the ROT.</returns>
        public static IEnumerable<IMoniker> EnumRunningObjects(this IRunningObjectTable rot)
        {
            var monikers = new IMoniker[1];

            // Creates and returns a pointer to an enumerator that can list the monikers
            // of all the objects currently registered in the running object table (ROT).
            IEnumMoniker enumMoniker;
            rot.EnumRunning(out enumMoniker);

            // Resets the enumeration sequence to the beginning.
            enumMoniker.Reset();

            // TODO: Create safe wrapper for each IMoniker to call Release?
            // Retrieves one item at a time in the enumeration sequence.
            while (enumMoniker.Next(1, monikers, IntPtr.Zero) == Win32Error.ERROR_SUCCESS)
            {
                yield return monikers[0];
            }
        }
    }
}