using System;

namespace Foundation.Services.UnitOfWorkServices
{
    public static class UnitOfWorkFactory
    {
        public static IUnitOfWorkFactory Factory { get; private set; }

        public static void SetFactory(IUnitOfWorkFactory unitOfWorkFactory)
        {
            if( Factory != null) throw new InvalidOperationException("Unit of Work factory has already been configured.");
            Factory = unitOfWorkFactory;
        }

        public static void Reset()
        {
            Factory = null;
        }
    }
}