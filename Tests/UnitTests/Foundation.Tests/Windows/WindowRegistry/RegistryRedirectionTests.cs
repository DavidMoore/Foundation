using System;
using Foundation.Windows.Registry;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Microsoft.Win32;

namespace Foundation.Tests.Windows.WindowRegistry
{
    [TestClass]
    public class RegistryRedirectionTests
    {
        [TestMethod]
        public void Redirects_registry()
        {
            string keyName = @"SOFTWARE\FoundationRegistryRedirectionTest" + Guid.NewGuid();
            
            try
            {
                using (new RegistryRedirector(keyName))
                {
                    // Key to create
                    using (Registry.CurrentUser.CreateSubKey(keyName)) {}
                }
            }
            finally
            {
                try
                {
                    RegistryKey key = Registry.CurrentUser.OpenSubKey(keyName);
                    Assert.IsNull(key, "The registry redirection failed as the key exists under the real HKCU registry.");
                }
                finally
                {
                    try
                    {
                        // Ensure we clean up the registry
                        Registry.CurrentUser.DeleteSubKey(keyName);
                    }
                    catch (ArgumentException)
                    {
                        // If the key never got made, we get ArgumentException
                        // when trying to delete it.
                    }
                }
            }
        }
    }
}