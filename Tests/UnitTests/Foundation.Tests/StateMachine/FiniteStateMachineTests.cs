using System;
using System.Linq;
using Foundation.StateMachine;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.StateMachine
{
    [TestClass]
    public class FiniteStateMachineTests
    {
        [TestMethod]
        public void Start_state_defaults_to_TStateType_default()
        {
            Assert.AreEqual(UpdateState.Ready, new FiniteStateMachine<UpdateState,string>().StartState);
            Assert.AreEqual(DateTime.MinValue, new FiniteStateMachine<DateTime,string>().StartState);
            Assert.IsNull(new FiniteStateMachine<Exception,string>().StartState);
        }

        [TestMethod]
        public void Current_state_defaults_to_StartState()
        {
            var machine = new FiniteStateMachine<string,string>();
            Assert.AreEqual(machine.StartState, machine.CurrentState);
        }

        [TestMethod]
        public void Transitions_for_mapped_input()
        {
            var machine = new FiniteStateMachine<UpdateState, string>();
            machine.Transitions.Add( new StateTransition<UpdateState, string>(){FromState = UpdateState.Ready, InputValidator = s => s.Equals("CheckForUpdates"), ToState = UpdateState.DownloadingUpdate});
            machine.Input("CheckForUpdates");
            Assert.AreEqual(UpdateState.DownloadingUpdate, machine.CurrentState);
        }

        [TestMethod, ExpectedException(typeof(ArgumentException))]
        public void Unknown_input_throws_ArgumentException()
        {
            var machine = new FiniteStateMachine<string, string>();
            machine.Input("CheckForUpdates");
        }

        [TestMethod, ExpectedException(typeof(ArgumentNullException))]
        public void Null_input_throws_ArgumentNullException()
        {
            new FiniteStateMachine<string, string>().Input(null);
        }

        [TestMethod]
        public void Input_handles_value_types()
        {
            var machine = new FiniteStateMachine<string, int>();
            machine.CurrentState = "Start";
            machine.Transitions.Add( new StateTransition<string, int>{InputValidator = i => i.Equals(0), FromState = "Start", ToState = "End"} );
            machine.Input(0);
        }

        [TestMethod]
        public void Transitions_collection_is_empty_by_default()
        {
            Assert.AreEqual(0, new FiniteStateMachine<string,string>().Transitions.Count);
        }

        [TestMethod, ExpectedException(typeof(ArgumentException))]
        public void Input_throws_ArgumentException_if_more_than_1_transition_found_for_current_state_and_input()
        {
            var machine = new FiniteStateMachine<UpdateState, string>();
            
            machine.Transitions.Add(new StateTransition<UpdateState, string>
                                        {
                                            FromState = UpdateState.Ready,
                                            ToState = UpdateState.Cancelling,
                                            InputValidator = s => s.Equals("Start")
                                        });

            machine.Transitions.Add(new StateTransition<UpdateState, string>
                                        {
                                            FromState = UpdateState.Ready,
                                            ToState = UpdateState.DownloadingUpdate,
                                            InputValidator = s => s.Equals("Start")
                                        });

            machine.Input("Start");
        }

        [TestMethod]
        public void FromState()
        {
            var machine = new FiniteStateMachine<UpdateState, string>();
            var transition = new StateTransition<UpdateState, string>
                                 {
                                     FromState = UpdateState.Ready,
                                     ToState = UpdateState.DownloadingUpdate,
                                     InputValidator = s => s.Equals("Start")
                                 };
            machine.Transitions.Add( transition );

            Assert.AreEqual(UpdateState.Ready, machine.CurrentState);
            var transitions = machine.Transitions.FromState(machine.CurrentState);
            Assert.AreEqual(1, transitions.Count());
            Assert.AreEqual(transition, transitions.First());
        }

        [TestMethod]
        public void ForInput()
        {
            var machine = new FiniteStateMachine<UpdateState, string>();
            var transition = new StateTransition<UpdateState, string>
                                 {
                                     FromState = UpdateState.Ready,
                                     ToState = UpdateState.DownloadingUpdate,
                                     InputValidator = s => s.Equals("Start")
                                 };
            machine.Transitions.Add(transition);

            Assert.AreEqual(UpdateState.Ready, machine.CurrentState);

            var transitions = machine.Transitions.ForInput("Start");
            Assert.AreEqual(1, transitions.Count());
            Assert.AreEqual(transition, transitions.First());
        }
    }
}