using System;
using System.Security;
using Microsoft.Win32;
using Microsoft.Win32.SafeHandles;

namespace Foundation.Windows.Registry
{
    /// <summary>
    /// Redirects registry operations to a specified key in the registry.
    /// This redirection only works for the current process.
    /// </summary>
    public class RegistryRedirector : IDisposable
    {
        readonly string redirectPath;

        [SecurityCritical]
        readonly RegistryKey overrideRoot = Microsoft.Win32.Registry.CurrentUser;

        static readonly int majorOsVersion = Environment.OSVersion.Version.Major;
        const string ClassRootPath = @"Software\Classes";

        public bool LeaveRemappedKeyOnDispose { get; set; }

        /// <summary>
        /// Initializes a new instance of the <see cref="RegistryRedirector"/> class.
        /// </summary>
        /// <param name="redirectPath">The redirect path.</param>
        public RegistryRedirector(string redirectPath)
        {
            this.redirectPath = redirectPath;
            EnableRegistryRedirection();
        }

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        /// <filterpriority>2</filterpriority>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources
        /// </summary>
        /// <param name="disposing"><c>true</c> to release both managed and unmanaged resources; <c>false</c> to release only unmanaged resources.</param>
        void Dispose(bool disposing)
        {
            if (!disposing) return;
            DisableRegistryRedirection();
            if( overrideRoot != null) overrideRoot.Dispose();
        }

        /// <summary>
        /// Remap a registry key to an alternative location.
        /// </summary>
        /// <param name="registryKey">The registry key to remap.</param>
        /// <param name="remapPathInRegistry">The path to remap the registry key to under HKLM.</param>
        void RemapRegistryKey(RegistryKey registryKey, string remapPathInRegistry)
        {
            using(var remappedKey = overrideRoot.CreateSubKey(remapPathInRegistry))
            {
                if( remappedKey == null) throw new InvalidOperationException("Couldn't create sub key");
                Win32Api.Registry.RedirectRegistryKey(registryKey.Handle, remappedKey.Handle);
            }
        }

        static void UnmapRegistryKey(RegistryKey registryKey)
        {
            using (var emptyHandle = new SafeRegistryHandle(IntPtr.Zero, true))
            {
                Win32Api.Registry.RedirectRegistryKey(registryKey.Handle, emptyHandle);
            }
        }


        void EnableRegistryRedirection()
        {
            // remap the registry roots supported by MSI
            // order is important here - the hive being used to redirect
            // to must be overridden last to avoid creating the other override
            // hives in the wrong location in the registry. For example, if HKLM is
            // the redirect destination, overriding it first will cause other hives
            // to be overridden under HKLM\Software\WiX\heat\HKLM\Software\WiX\HKCR
            // instead of under HKLM\Software\WiX\heat\HKCR
            if (majorOsVersion < 6)
            {
                RemapRegistryKey(Microsoft.Win32.Registry.ClassesRoot, String.Concat(redirectPath, @"\\HKEY_CLASSES_ROOT"));
                RemapRegistryKey(Microsoft.Win32.Registry.CurrentUser, String.Concat(redirectPath, @"\\HKEY_CURRENT_USER"));
                RemapRegistryKey(Microsoft.Win32.Registry.Users, String.Concat(redirectPath, @"\\HKEY_USERS"));
                RemapRegistryKey(Microsoft.Win32.Registry.LocalMachine, String.Concat(redirectPath, @"\\HKEY_LOCAL_MACHINE"));
            }
            else
            {
                RemapRegistryKey(Microsoft.Win32.Registry.ClassesRoot, String.Concat(redirectPath, @"\\HKEY_CLASSES_ROOT"));
                RemapRegistryKey(Microsoft.Win32.Registry.LocalMachine, String.Concat(redirectPath, @"\\HKEY_LOCAL_MACHINE"));
                RemapRegistryKey(Microsoft.Win32.Registry.Users, String.Concat(redirectPath, @"\\HKEY_USERS"));
                RemapRegistryKey(Microsoft.Win32.Registry.CurrentUser, String.Concat(redirectPath, @"\\HKEY_CURRENT_USER"));

                // Typelib registration on Windows Vista requires that the key
                // HKLM\Software\Classes exist, so add it to the remapped root
                Microsoft.Win32.Registry.LocalMachine.CreateSubKey(ClassRootPath);
            }
        }

        void DisableRegistryRedirection()
        {
            // order is important here - we must quit overriding the hive
            // being used to redirect first
            if (majorOsVersion < 6)
            {
                UnmapRegistryKey(Microsoft.Win32.Registry.LocalMachine);
                UnmapRegistryKey(Microsoft.Win32.Registry.Users);
                UnmapRegistryKey(Microsoft.Win32.Registry.CurrentUser);
                UnmapRegistryKey(Microsoft.Win32.Registry.ClassesRoot);
            }
            else
            {
                UnmapRegistryKey(Microsoft.Win32.Registry.CurrentUser);
                UnmapRegistryKey(Microsoft.Win32.Registry.Users);
                UnmapRegistryKey(Microsoft.Win32.Registry.LocalMachine);
                UnmapRegistryKey(Microsoft.Win32.Registry.ClassesRoot);
            }

            if( !LeaveRemappedKeyOnDispose) RemoveRemappedKey();
        }

        void RemoveRemappedKey()
        {
            overrideRoot.DeleteSubKeyTree(redirectPath);
        }
    }
}