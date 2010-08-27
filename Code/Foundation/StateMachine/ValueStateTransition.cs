namespace Foundation.StateMachine
{
    public class ValueStateTransition<TStateType, TInputType> : StateTransition<TStateType, TInputType>
    {
        public ValueStateTransition(TStateType fromState, TStateType toState, TInputType input)
        {
            FromState = fromState;
            ToState = toState;
            InputValue = input;
            InputValidator = ValidateInput;
        }

        bool ValidateInput(TInputType value)
        {
            return value != null && value.Equals(InputValue);
        }

        /// <summary>
        /// Gets or sets the valid input for this transition.
        /// </summary>
        /// <value>The input.</value>
        public TInputType InputValue { get; set; }
    }
}