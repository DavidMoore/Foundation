using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.StateMachine
{
    [TestClass]
    public class UpdateStateMachineTests
    {
        [TestMethod]
        public void Start()
        {
            var machine = new UpdateStateMachine();

            Assert.AreEqual(UpdateState.Ready, machine.CurrentState);
            machine.Start();
            Assert.AreEqual(UpdateState.DownloadingUpdate, machine.CurrentState);
        }
    }
}
