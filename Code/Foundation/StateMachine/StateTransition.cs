using System;

namespace Foundation.StateMachine
{
    /// <summary>
    /// Defines a transition from one state to another, which is triggered
    /// by an input. The transition is validated by checking the input
    /// against the <see cref="InputValidator"/> predicate.
    /// </summary>
    /// <typeparam name="TStateType">The type of the state type.</typeparam>
    /// <typeparam name="TInputType">The type of the input type.</typeparam>
    public class StateTransition<TStateType, TInputType>
    {
        /// <summary>
        /// Gets or sets the state to transition from.
        /// </summary>
        /// <value>The source state to transition from.</value>
        public TStateType FromState { get; set; }

        /// <summary>
        /// Gets or sets the state to transition to.
        /// </summary>
        /// <value>The target transition state.</value>
        public TStateType ToState { get; set; }

        /// <summary>
        /// Gets or sets the input validator, which is used
        /// to validate inputs for this transition.
        /// </summary>
        /// <value>The input validator.</value>
        public Predicate<TInputType> InputValidator { get; set; }

        /// <summary>
        /// Determines whether the specified input is valid
        /// for this transition.
        /// </summary>
        /// <param name="input">The input.</param>
        /// <returns>
        /// 	<c>true</c> if the specified input is valid; otherwise, <c>false</c>.
        /// </returns>
        public bool IsValid(TInputType input)
        {
            if( InputValidator == null) throw new InvalidOperationException("You must set the InputValidator before validating inputs");
            return InputValidator(input);
        }
    }
}