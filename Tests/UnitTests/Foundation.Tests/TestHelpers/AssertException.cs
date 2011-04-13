using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.TestHelpers
{
    public static class AssertException
    {
        public static TException Throws<TException>(string message, Action action) where TException : Exception
        {
            try
            {
                action();

                Assert.Fail("Exception of type {0} expected; got none exception", typeof(TException).Name);
            }
            catch (TException ex)
            {
                if (message != null) Assert.AreEqual(message.Trim(), ex.Message.Trim());
                return ex;
            }
            catch (Exception ex)
            {
                Assert.Fail("Exception of type {0} expected; got exception of type {1}", typeof(TException).Name, ex.GetType().Name);
            }

            Assert.Fail("Exception of type {0} expected but no exception was thrown");
            return null;
        }

        public static TException Throws<TException>(Action action) where TException : Exception
        {
            return Throws<TException>(null, action);
        }
    }
}