using System;
using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using Foundation.Services.UnitOfWorkServices;
using NHibernate;
using NHibernate.ByteCode.LinFu;
using NHibernate.Context;
using NHibernate.Tool.hbm2ddl;

namespace Foundation.Data.Hibernate
{
    /// <summary>
    /// Initializes NHibernate as a data access layer.
    /// </summary>
    public class HibernateDataProvider : IDataProvider
    {
        public HibernateDataProvider(ISessionFactory sessionFactory)
        {
            SessionFactory = sessionFactory;
        }

        public HibernateDataProvider() {}

        /// <summary>
        /// Initializes this instance.
        /// </summary>
        public void Initialize()
        {
            Configuration = Fluently.Configure()
                .Database(SQLiteConfiguration.Standard.InMemory()
                              .ConnectionString("Data Source=:memory:;Version=3;New=True;Pooling=True;Max Pool Size=1;")
                              .ProxyFactoryFactory(typeof(ProxyFactoryFactory))
                              .CurrentSessionContext<CurrentSessionContext>()
                              .ShowSql())
                .Mappings(m => GetMappings(m));

            Configuration.ExposeConfiguration(configuration => new SchemaExport(configuration).Create(false, true));
            Configuration.ExposeConfiguration(configuration => configuration.SetProperty("current_session_context_class", "call"));

            SessionFactory = Configuration.BuildSessionFactory();
        }

        /// <summary>
        /// Gets or sets the NHibernate session factory.
        /// </summary>
        /// <value>The NHibernate session factory.</value>
        public ISessionFactory SessionFactory { get; protected set; }

        /// <summary>
        /// Gets or sets the Fluent NHibernate configuration.
        /// </summary>
        /// <value>The Fluent NHibernate configuration.</value>
        public FluentConfiguration Configuration { get; protected set; }

        /// <summary>
        /// Gets the mappings.
        /// </summary>
        /// <param name="mappingConfiguration">The mapping configuration.</param>
        /// <returns></returns>
        protected virtual MappingConfiguration GetMappings(MappingConfiguration mappingConfiguration)
        {
            mappingConfiguration.FluentMappings.AddFromAssembly(GetType().Assembly);

            return mappingConfiguration;
        }

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        /// <filterpriority>2</filterpriority>
        public void Dispose()
        {
            Dispose(true);
        }

        /// <summary>
        /// Releases unmanaged and - optionally - managed resources
        /// </summary>
        /// <param name="disposing"><c>true</c> to release both managed and unmanaged resources; <c>false</c> to release only unmanaged resources.</param>
        void Dispose(bool disposing)
        {
            if(disposing && SessionFactory != null) SessionFactory.Dispose();
        }

        /// <summary>
        /// Gets the unit of work factory for this provider.
        /// </summary>
        /// <returns></returns>
        public IUnitOfWorkFactory GetUnitOfWorkFactory()
        {
            if( SessionFactory == null) throw new HibernateDataProviderException("The session factory was not configured. Either pass it into the constructor, or call Initialize() before trying to get a Unit of Work.");
            return new HibernateUnitOfWorkFactory(SessionFactory);
        }
    }
}