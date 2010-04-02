using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Foundation.Tests.StateMachine
{
    class SimpleStateMachineTests
    {
        

        void Test()
        {
            var test = new
                {
                    States = new Dictionary<UpdateState, IEnumerable<UpdateState>>
                                 {
                                     {UpdateState.Ready, new List<UpdateState>{UpdateState.CheckingForUpdates} }
                                 }            
            };
        }
    }

    enum UpdateState
        {
            Ready,
            CheckingForUpdates,
            UpdateAvailable,
            CompulsoryUpdateAvailable,
            DownloadingUpdate,
            UpdateReady,
            ApplyingUpdate,
            RestartRequired,
            Restarting,
            Cancelling,
            Cancelled,
            ErrorCheckingForUpdates,
            ErrorDownloadingUpdate,
            ErrorApplyingUpdate
        }

    enum UpdateTransitions
    {
        [Transition(UpdateState.Cancelled, UpdateState.CheckingForUpdates, UpdateState.ApplyingUpdate,UpdateState.DownloadingUpdate)]
        Cancel,


        CheckForUpdates,
        DownloadUpdate,
        ApplyUpdate,
        Restart
    }

    [AttributeUsage(AttributeTargets.All, AllowMultiple = true)]
    class TransitionAttribute : Attribute
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="T:System.Attribute"/> class.
        /// </summary>
        public TransitionAttribute(UpdateState to, params UpdateState[] @from)
        {
            From = from;
            To = to;
        }

        public IEnumerable<UpdateState> From { get; set; }
        public UpdateState To { get; set; }
    }
}
