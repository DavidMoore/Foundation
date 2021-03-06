using System;
using System.Collections.Generic;
using System.Linq;

namespace Foundation.Services.Registration
{
    public class ServiceRegistration
    {
        public IServiceManager ServiceManager { get; private set; }

        public ServiceRegistration(IServiceManager serviceManager)
        {
            ServiceManager = serviceManager;
        }

        public ServiceRegistration RegisterService(Type type)
        {
            if (type == null) throw new ArgumentNullException("type");
            var registerServiceAttributes = ReflectionUtilities.GetAttributes<RegisterComponentAttribute>(type);

            foreach (var registerServiceAttribute in registerServiceAttributes)
            {
                var contractType = registerServiceAttribute.ServiceContract;
                var lifestyle = registerServiceAttribute.Lifestyle;
                var name = registerServiceAttribute.Name;

                if (contractType == null)
                {
                    var interfaces = type.GetInterfaces().ToList();
                    if (interfaces.Count == 0)
                        throw new ServiceRegistrationException(
                            "The service '{0}' does not have any contract interfaces! Ensure it implements a contract, or manually specify the contract type in the [{1}] attribute.",
                            type, typeof(RegisterComponentAttribute).Name);

                    contractType = interfaces.First();

                    if( contractType.Namespace == null ) throw new ServiceRegistrationException("The contract type {0} for type {1} doesn't have a Namespace!", contractType, type);

                    // If it's a dynamically composed UI class, such as a WPF UserControl, the top-most interface
                    // will be from System.Windows.Media.Composition; in which case, we want to try to get the next one up
                    if (contractType.Namespace.StartsWith("System.Windows.Media.Composition", StringComparison.OrdinalIgnoreCase))
                    {
                        if (interfaces.Count < 2)
                            throw new ServiceRegistrationException(
                                "The service {0} doesn't have a base contract interface! Ensure it implements a contract, or manually specify the contract type in the [{1}] attribute.",
                                type, typeof(RegisterComponentAttribute).Name);
                        contractType = interfaces[interfaces.Count - 2];
                    }
                }

                ServiceManager.AddService(contractType, type, name, lifestyle);
            }

            return this;
        }

        public void RegisterServices(IEnumerable<Type> types)
        {
            if (types == null) throw new ArgumentNullException("types");
            foreach (var type in types)
            {
                RegisterService(type);
            }
        }
    }
}