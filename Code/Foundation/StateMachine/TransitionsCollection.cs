using System;
using System.Collections.ObjectModel;

namespace Foundation.StateMachine
{
    public class TransitionsCollection : Collection<StateTransition<string,string>>
    {
        protected override void InsertItem(int index, StateTransition<string, string> item)
        {
            if( item == null) throw new ArgumentNullException("item");

            base.InsertItem(index, item);
        }
    }
}