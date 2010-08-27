using System;
using Foundation.StateMachine;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.StateMachine
{
    [TestClass]
    public class TransitionCollectionTests
    {
        [TestMethod, ExpectedException(typeof(ArgumentNullException))]
        public void Add_throws_exception_for_null_transition()
        {
            var transitions = new TransitionsCollection();
            transitions.Add(null);
        }
    }
}