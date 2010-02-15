using System;
using System.Globalization;

namespace Foundation.Services
{
    public class ServiceRegistrationException : Exception
    {
        public ServiceRegistrationException(string message, Type serviceType)
            : base(string.Format(CultureInfo.CurrentCulture, message, serviceType)) {}
    }
}