using Foundation.Data;
using Foundation.Services.UnitOfWorkServices;

namespace Foundation.TestHelpers
{
    /// <summary>
    /// Provides a base for unit tests that want to operate on the data layer.
    /// </summary>
    public class DatabaseTestBase<TDataAccessLayerProvider> : ICanInitialize where TDataAccessLayerProvider : IDataProvider, new()
    {
        readonly TDataAccessLayerProvider provider;

        /// <summary>
        /// Initializes a new instance of the <see cref="DatabaseTestBase{TDataAccessLayerProvider}"/> class.
        /// </summary>
        public DatabaseTestBase() : this(new TDataAccessLayerProvider()) { }

        /// <summary>
        /// Gets the data access layer provider.
        /// </summary>
        /// <value>The data access layer provider.</value>
        protected TDataAccessLayerProvider Provider { get { return provider; } }

        /// <summary>
        /// Initializes a new instance of the <see cref="DatabaseTestBase{TDataAccessLayerProvider}"/> class.
        /// </summary>
        /// <param name="provider">The provider.</param>
        protected DatabaseTestBase(TDataAccessLayerProvider provider)
        {
            this.provider = provider;
        }

        /// <summary>
        /// Initializes this instance.
        /// </summary>
        public virtual void Initialize()
        {
            provider.Initialize();
            ConfigureUnitOfWorkFactory();
            Work = new UnitOfWork();
        }

        /// <summary>
        /// Configures the unit of work factory.
        /// </summary>
        protected virtual void ConfigureUnitOfWorkFactory()
        {
            var factory = UnitOfWorkFactory.Factory;
            if (factory != null) factory.Dispose();
            UnitOfWorkFactory.Reset();
            UnitOfWorkFactory.SetFactory(provider.GetUnitOfWorkFactory());
        }

        /// <summary>
        /// Cleans up.
        /// </summary>
        public virtual void Cleanup()
        {
            if (Work != null) Work.Dispose();
            var factory = UnitOfWorkFactory.Factory;
            if (factory != null) factory.Dispose();
        }

        protected IUnitOfWork Work { get; private set; }
    }
}