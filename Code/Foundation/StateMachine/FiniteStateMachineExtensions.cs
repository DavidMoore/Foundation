using System.Collections.Generic;
using System.Linq;

namespace Foundation.StateMachine
{
    public static class FiniteStateMachineExtensions
    {
        public static IEnumerable<StateTransition<TStateType, TInputType>> FromState<TStateType, TInputType>(this IEnumerable<StateTransition<TStateType, TInputType>> transitions, TStateType state)
        {
            return transitions.Where(transition => transition.FromState != null && transition.FromState.Equals(state));
        }

        public static IEnumerable<StateTransition<TStateType, TInputType>> ForInput<TStateType, TInputType>(this IEnumerable<StateTransition<TStateType, TInputType>> transitions, TInputType input)
        {
            return transitions.Where(transition => transition.IsValid(input));
        }
    }
}