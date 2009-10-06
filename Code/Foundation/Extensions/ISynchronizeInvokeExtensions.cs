using System;
using System.ComponentModel;
using NUnit.Framework;

namespace Foundation.Extensions
{
    [TestFixture]
    public static class ISynchronizeInvokeExtensions
    {
        [Test]
        public static void InvokeEx<T>(this T obj, Action<T> action) where T : ISynchronizeInvoke
        {
            if (obj.InvokeRequired)
            {
                obj.Invoke(action, new object[] { obj });
            }
            else
            {
                action(obj);
            }
        }
    }
}