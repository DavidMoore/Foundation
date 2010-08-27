using Foundation.StateMachine;

namespace Foundation.Tests.StateMachine
{
    public class UpdateStateMachine : FiniteStateMachine<UpdateState, UpdateCommand>
    {
        public UpdateStateMachine()
        {
            Transitions.Add( new StateTransition<UpdateState, UpdateCommand>
                                 {
                                     FromState = UpdateState.Ready,
                                     ToState = UpdateState.DownloadingUpdate,
                                     InputValidator = command => command.Equals(UpdateCommand.Download)
                                 } );
        }

        public void Start()
        {
            Input(UpdateCommand.Download);
        }
    }
}