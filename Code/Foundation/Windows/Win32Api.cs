using System;
using System.Runtime.ConstrainedExecution;
using System.Runtime.InteropServices;
using Microsoft.Win32.SafeHandles;

namespace Foundation.Windows
{
    /// <summary>
    /// Win32 API interop functions through P/Invoke.
    /// </summary>
    public static class Win32Api
    {
        const string AdvancedWindows32BaseApi = "advapi32.dll";
        const string Kernel32ClientBaseApi = "kernel32.dll";

        /// <summary>
        /// Contains functions for manipulating the Windows registry.
        /// </summary>
        public static class Registry
        {
            /// <summary>
            /// Override a registry hive key to another registry key.
            /// </summary>
            /// <param name="key">Handle of the key to override.</param>
            /// <param name="newKey">Handle to override key.</param>
            internal static void RedirectRegistryKey(SafeRegistryHandle key, SafeRegistryHandle newKey)
            {
                if (0 != RegOverridePredefKey(key, newKey))
                {
                    throw new Exception();
                }
            }
            
            /// <summary>
            /// Interop to RegOverridePredefKey.
            /// </summary>
            /// <param name="key">Handle to key to override.</param>
            /// <param name="newKey">Handle to override key.</param>
            /// <returns>0 if success.</returns>
            [DllImport(AdvancedWindows32BaseApi, EntryPoint = "RegOverridePredefKey", CharSet = CharSet.Unicode, ExactSpelling = true, SetLastError = true)]
            static extern int RegOverridePredefKey(SafeRegistryHandle key, SafeRegistryHandle newKey);
        }

        /// <summary>
        /// Loads a module into this process.
        /// </summary>
        /// <param name="file">The file to load.</param>
        /// <returns>A handle to the loaded module.</returns>
        public static SafeLibraryHandle LoadLibrary(string file)
        {
            var handle = LoadLibraryEx(file, IntPtr.Zero, LoadLibraryExFlags.LoadWithAlteredSearchPath);

            if (handle == null)
            {
                int lastError = Marshal.GetLastWin32Error();
                throw new LoadLibraryException(file, lastError);
            }

            return handle;
        }

        /// <summary>
        /// Loads a dynamic link library into this process.
        /// </summary>
        /// <remarks>Loads the specified module into the address space of the calling process. The specified module may cause other modules to be loaded.</remarks>
        /// <param name="fileName">The name of the module.</param>
        /// <param name="reserved">This parameter is reserved for future use. It must be null (set to <see cref="IntPtr.Zero"/>).</param>
        /// <param name="flags">The action to be taken when loading the module.</param>
        /// <returns>
        /// If the function succeeds, the return value is a handle to the loaded module.
        /// If the function fails, the return value is NULL. To get extended error information, call <see cref="Marshal.GetLastWin32Error"/>.
        /// </returns>
        [DllImport(Kernel32ClientBaseApi, CharSet = CharSet.Unicode, SetLastError = true)]
        internal static extern SafeLibraryHandle LoadLibraryEx(string fileName, IntPtr reserved, LoadLibraryExFlags flags);

        /// <summary>
        /// Frees the loaded dynamic-link library (DLL) module and, if necessary, decrements its reference count.
        /// When the reference count reaches zero, the module is unloaded from the address space of the calling process and the handle is no longer valid.
        /// </summary>
        /// <param name="moduleHandle">A handle to the loaded library module. The <see cref="LoadLibraryEx"/> function returns this handle.</param>
        /// <returns></returns>
        [ReliabilityContract(Consistency.WillNotCorruptState, Cer.Success)]
        [DllImport(Kernel32ClientBaseApi, CharSet = CharSet.Unicode)]
        internal static extern bool FreeLibrary(IntPtr moduleHandle);
    }
}