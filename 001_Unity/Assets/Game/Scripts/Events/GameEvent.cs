using System;

namespace Arthurian.Events
{
    public class GameEvent
    {
        public event Action OnRaised;

        public void Raise()
        {
            OnRaised?.Invoke();
        }
    }
}
