using System;
using Foundation.StateMachine;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.StateMachine
{
    [TestClass]
    public class StateTransitionTests
    {
        [TestMethod, ExpectedException(typeof(InvalidOperationException))]
        public void IsValid_throws_InvalidOperationException_if_InputValidator_is_null()
        {
            var transition = new StateTransition<string, string>();
            transition.IsValid("test");
        }
    }
}
