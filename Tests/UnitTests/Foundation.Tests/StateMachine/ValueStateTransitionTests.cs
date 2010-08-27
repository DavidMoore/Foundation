using Foundation.StateMachine;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.StateMachine
{
    [TestClass]
    public class ValueStateTransitionTests
    {
        [TestMethod]
        public void Properties()
        {
            var stateTransition = new ValueStateTransition<UpdateState, string>(UpdateState.Ready,UpdateState.DownloadingUpdate,"Start");

            Assert.IsTrue(stateTransition.IsValid("Start"));
            Assert.IsFalse(stateTransition.IsValid("Stop"));
        }

        [TestMethod]
        public void Constructor()
        {
            var stateTransition = new ValueStateTransition<UpdateState, UpdateCommand>(UpdateState.Ready,
                                                                                  UpdateState.DownloadingUpdate,
                                                                                  UpdateCommand.Download);

            Assert.AreEqual(UpdateState.Ready, stateTransition.FromState);
            Assert.AreEqual(UpdateState.DownloadingUpdate, stateTransition.ToState);
            Assert.AreEqual(UpdateCommand.Download, stateTransition.InputValue);
            Assert.IsTrue( stateTransition.IsValid(UpdateCommand.Download) );
        }

        [TestMethod]
        public void IsValid_from_input()
        {
            var transition = new ValueStateTransition<string, string>("Start", "End", "Run");
            Assert.IsTrue(transition.IsValid("Run"));
            Assert.IsFalse(transition.IsValid(null));
            Assert.IsFalse(transition.IsValid(string.Empty));
        }

        [TestMethod]
        public void IsValid_from_input_of_value_type()
        {
            var transition = new ValueStateTransition<string, int>("Start", "End", 1);
            Assert.IsTrue(transition.IsValid(1));
            Assert.IsFalse(transition.IsValid(0));
            Assert.IsFalse(transition.IsValid(-1));
        }
    }
}