using System;

namespace Foundation.Services.UnitOfWorkServices
{
    public static class UnitOfWorkFactory
    {
        static IUnitOfWorkFactory factory;

        static UnitOfWorkFactory()
        {
            factory = null;
        }

        public static IUnitOfWorkFactory GetFactory()
        {
            return factory;
        }

        public static void SetFactory(IUnitOfWorkFactory unitOfWorkFactory)
        {
            if( factory != null) throw new InvalidOperationException("Unit of Work factory has already been configured.");
            factory = unitOfWorkFactory;
        }

        internal static void Reset()
        {
            factory = null;
        }
    }
}