using System;
using System.Runtime.InteropServices;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Microsoft.Win32.SafeHandles;

namespace Foundation.Tests.Windows.ComActivation
{
    [TestClass]
    public class ComActivationContextTests
    {
        [TestMethod]
        public void Test()
        {
            using (var activation = new ComActivationProvider("Path"))
            {
                
            }
        }
    }

    public class ComActivationProvider : IDisposable
    {
        public ComActivationProvider(string manifestPath)
        {
            ActivationContext ac = new ActivationContext
            {
                cbSize = Marshal.SizeOf(typeof (ActivationContext)),
                lpSource = manifestPath,
                dwFlags = 0
            };

            using (SafeActivationContextHandle hActCtx = NativeMethod.CreateActCtx(ref ac))
            {
                if (hActCtx.IsInvalid)
                {
                    Console.WriteLine("The ActCtx failed to be created w/err {0}", Marshal.GetLastWin32Error());
                }

                // Activate the activation context.
                IntPtr cookie;
                if (NativeMethod.ActivateActCtx(hActCtx, out cookie))
                {
                    try
                    {
                        actoinToDo();
                    }
                    finally
                    {
                        // Deactivate the activation context.
                        NativeMethod.DeactivateActCtx(0, cookie);
                    }
                }
                else
                {
                    Console.WriteLine("The ActCtx failed to be activated w/err {0}", Marshal.GetLastWin32Error());
                }
            }
        }

        public void Dispose()
        {
            Dispose(true);
        }

        void Dispose(bool disposing)
        {
            if (!disposing) return;

            GC.SuppressFinalize(this);
        }
    }

    [TestClass]
    public class ActivationContextTests
    {
        [TestMethod]
        public void Fields()
        {
            var value = new ActivationContext();

            Assert.AreEqual(0, value.cbSize);
            Assert.AreEqual((uint)0, value.dwFlags);
            Assert.AreEqual(0, value.wProcessorArchitecture);
            Assert.AreEqual((short)0, value.wLangId);
            Assert.IsNull(value.lpSource);
            Assert.IsNull(value.lpAssemblyDirectory);
            Assert.IsNull(value.lpResourceName);
            Assert.IsNull(value.lpApplicationName);
            Assert.AreEqual(IntPtr.Zero, value.hModule);
        }
    }

    internal static class NativeMethod
    {
        [DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
        public static extern SafeActivationContextHandle CreateActCtx(ref ActivationContext pActCtx);

        [DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool ActivateActCtx(SafeActivationContextHandle hActCtx, out IntPtr lpCookie);

        [DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool DeactivateActCtx(int dwFlags, IntPtr lpCookie);

        [DllImport("kernel32.dll", CharSet = CharSet.Unicode, SetLastError = true)]
        public static extern void ReleaseActCtx(IntPtr hActCtx);
    }

    class SafeActivationContextHandle : SafeHandleZeroOrMinusOneIsInvalid
    {
        private SafeActivationContextHandle() : base(true)
        {
        }

        public SafeActivationContextHandle(IntPtr preexistingHandle, bool ownsHandle) : base(ownsHandle)
        {
            SetHandle(preexistingHandle);
        }

        protected override bool ReleaseHandle()
        {
            NativeMethod.ReleaseActCtx(handle);
            return true;
        }
    }

    /// <summary>
    /// The Activation Context structure.
    /// </summary>
    [StructLayout(LayoutKind.Sequential, Pack = 4, CharSet = CharSet.Unicode)]
    public struct ActivationContext
    {
        /// <summary>
        /// The size, in bytes, of this structure. This is used to determine the version of this structure.
        /// </summary>
        public int cbSize;


        /// <summary>
        /// Flags that indicate how the values included in this structure are to be used.
        /// Set any undefined bits in dwFlags to 0.
        /// If any undefined bits are not set to 0, the call to CreateActCtx that creates the activation context
        /// fails and returns an invalid parameter error code.
        /// </summary>
        public uint dwFlags;

        /// <summary>
        /// Null-terminated string specifying the path of the manifest file or PE image to be used to create the activation context. If this path refers to an EXE or DLL file, the lpResourceName member is required.
        /// </summary>
        public string lpSource;


        /// <summary>
        /// Identifies the type of processor used. Specifies the system's processor architecture.
        ///
        /// This value can be one of the following values: 
        /// PROCESSOR_ARCHITECTURE_INTEL
        /// PROCESSOR_ARCHITECTURE_MIPS
        /// PROCESSOR_ARCHITECTURE_ALPHA
        /// PROCESSOR_ARCHITECTURE_PPC
        /// PROCESSOR_ARCHITECTURE_UNKNOWN
        /// </summary>
        public ushort wProcessorArchitecture;


        /// <summary>
        /// Specifies the language manifest that should be used. The default is the current user's current UI language. 
        /// 
        /// If the requested language cannot be found, an approximation is searched for using the following order: 
        /// The current user's specific language. For example, for US English (1033).
        /// The current user's primary language. For example, for English (9).
        /// The current system's specific language.
        /// The current system's primary language.
        /// A nonspecific worldwide language. Language neutral (0).
        /// </summary>
        public Int16 wLangId;

        /// <summary>
        /// The base directory in which to perform private assembly probing if assemblies in the activation context are not present in the system-wide store.
        /// </summary>
        public string lpAssemblyDirectory;


        /// <summary>
        /// Pointer to a null-terminated string that contains the resource name to be loaded from the PE specified in hModule or lpSource. If the resource name is an integer, set this member using MAKEINTRESOURCE. This member is required if lpSource refers to an EXE or DLL.
        /// </summary>
        public string lpResourceName;


        /// <summary>
        /// The name of the current application. If the value of this member is set to null, the name of the executable that launched the current process is used.
        /// </summary>
        public string lpApplicationName;


        /// <summary>
        /// Use this member rather than lpSource if you have already loaded a DLL and wish to use it to create activation contexts rather than using a path in lpSource. See lpResourceName for the rules of looking up resources in this module.
        /// </summary>
        public IntPtr hModule;
    }
}