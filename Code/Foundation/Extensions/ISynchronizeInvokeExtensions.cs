using System;
using System.ComponentModel;

namespace Foundation.Extensions
{
// ReSharper disable InconsistentNaming
    public static class ISynchronizeInvokeExtensions
// ReSharper restore InconsistentNaming
    {
        /// <exception cref="ArgumentNullException">when <paramref name="invokeObject"/> is null</exception>
        /// <exception cref="ArgumentNullException">when <paramref name="action"/> is null</exception>
        public static void InvokeEx<T>(this T invokeObject, Action<T> action) where T : ISynchronizeInvoke
        {
            if (invokeObject == null) throw new ArgumentNullException("invokeObject");
            if (action == null) throw new ArgumentNullException("action");

            if (invokeObject.InvokeRequired)
            {
                invokeObject.Invoke(action, new object[] { invokeObject });
            }
            else
            {
                action(invokeObject);
            }
        }
    }
}