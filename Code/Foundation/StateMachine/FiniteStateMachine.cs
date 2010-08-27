using System;
using System.Collections.Generic;
using System.Linq;

namespace Foundation.StateMachine
{
    public class FiniteStateMachine<TStateType, TInputType>
    {
        public FiniteStateMachine()
        {
            StartState = default(TStateType);
            CurrentState = default(TStateType);
            Transitions = new List<StateTransition<TStateType, TInputType>>();
        }

        public TStateType StartState { get; set; }

        public TStateType CurrentState { get; set; }

        public void Input(TInputType input)
        {
            if (input == null) throw new ArgumentNullException();

            if( !Transitions.Any(transition => transition.IsValid(input)) ) throw new ArgumentException("Unknown input:", "input");

            // Get valid transitions for the current state and input
            var transitions = Transitions.FromState(CurrentState).ForInput(input);

            if( transitions.Count() == 0) throw new ArgumentException("No valid transaction found for the current state and input.", "input");
            if( transitions.Count() > 1) throw new ArgumentException("There is more than one matching transaction for the current state and input.", "input");

            CurrentState = transitions.First().ToState;
        }

        public IList<StateTransition<TStateType,TInputType>> Transitions { get; private set; }

        
    }
}