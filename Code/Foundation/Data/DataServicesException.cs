using System;
using System.Runtime.Serialization;

namespace Foundation.Data
{
    public class DataServicesException : BaseException
    {
        public DataServicesException() { }
        public DataServicesException(string message) : base(message) { }
        public DataServicesException(string message, params object[] args) : base(message, args) { }
        public DataServicesException(Exception innerException, string message, params object[] args) : base(innerException, message, args) { }
        public DataServicesException(string message, Exception innerException) : base(message, innerException) { }
        protected DataServicesException(SerializationInfo info, StreamingContext context) : base(info, context) { }
    }
}