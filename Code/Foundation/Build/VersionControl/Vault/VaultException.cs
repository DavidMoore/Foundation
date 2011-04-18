using System;
using System.Runtime.Serialization;

namespace Foundation.Build.VersionControl.Vault
{
    public class VaultException : BaseException
    {
        public VaultException() {}
        public VaultException(string message) : base(message) {}
        public VaultException(string message, params object[] args) : base(message, args) {}
        public VaultException(Exception innerException, string message, params object[] args) : base(innerException, message, args) {}
        public VaultException(string message, Exception innerException) : base(message, innerException) {}
        protected VaultException(SerializationInfo info, StreamingContext context) : base(info, context) {}
    }
}