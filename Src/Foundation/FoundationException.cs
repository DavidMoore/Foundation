using System;

namespace Foundation
{
    public class FoundationException : Exception
    {
        public FoundationException() {}
        public FoundationException(string message) : base(message) {}
    }
}