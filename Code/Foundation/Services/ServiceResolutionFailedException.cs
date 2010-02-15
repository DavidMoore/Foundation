using System;

namespace Foundation.Services
{
    /// <summary>
    /// Exception when an attempt at resolving a service component in a container failed
    /// </summary>
    public class ServiceResolutionFailedException : BaseException
    { 
        /// <summary>
        /// Initailizes a new instance of <see cref="ServiceResolutionFailedException"/> for
        /// the specified service type, and inner exception containing details of the
        /// resolution failure
        /// </summary>
        /// <param name="serviceType">The service type being resolved</param>
        /// <param name="innerException">The details of the resolution failure</param>
        public ServiceResolutionFailedException( Type serviceType, Exception innerException) : base(innerException, "Couldn't resolve service of type {0}", serviceType) {}
    }
}