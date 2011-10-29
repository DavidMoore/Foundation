using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using FluentNHibernate.Automapping;
using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using Foundation.Services.UnitOfWorkServices;
using NHibernate;
using NHibernate.Cfg;
using NHibernate.Context;
using NHibernate.Tool.hbm2ddl;

namespace Foundation.Data.Hibernate
{
    /// <summary>
    /// Initializes NHibernate as a data access layer.
    /// </summary>
    public class HibernateDataServicesProvider : IDataServicesProvider
    {
        public HibernateDataServicesProvider(ISessionFactory sessionFactory)
        {
            SessionFactory = sessionFactory;
        }

        public HibernateDataServicesProvider() {}

        /// <summary>
        /// Initializes this instance.
        /// </summary>
        public virtual void Initialize()
        {
            if (SessionFactory != null) return;

            BuildConfiguration();

            SessionFactory = Configuration.BuildSessionFactory();
        }

        public virtual void UpdateSchema()
        {
            var schema = new SchemaExport(HibernateConfiguration);

            using(var textWriter = new StreamWriter(Console.OpenStandardOutput()))
            {
                schema.Execute(true, true, false, SessionFactory.GetCurrentSession().Connection, textWriter);
            }
            //schema.Create(true, true);
        }

        protected virtual void BuildConfiguration()
        {
            Configuration = Fluently.Configure()
                .Database(GetDatabase())
                .Mappings(m => GetMappings(m))
                .CurrentSessionContext<CurrentSessionContext>()
                .ExposeConfiguration(configuration => configuration.SetProperty("current_session_context_class", "call"))
                .ExposeConfiguration(configuration => HibernateConfiguration = configuration)
                ;
        }

        public Configuration HibernateConfiguration { get; set; }

        protected virtual IPersistenceConfigurer GetDatabase()
        {
            return SQLiteConfiguration.Standard.InMemory()
                //.ConnectionString("Data Source=:memory:;Version=3;New=True;Pooling=True;Max Pool Size=1;")
                .ConnectionString("Data Source=:memory:;Version=3;New=True;")
                .ShowSql();
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
        [CLSCompliant(false)]
        public FluentConfiguration Configuration { get; protected set; }

        /// <summary>
        /// Gets the mappings. By default, loads all mappings from all assemblies loaded into the current app domain.
        /// </summary>
        /// <param name="mappingConfiguration">The mapping configuration.</param>
        /// <returns></returns>
        [CLSCompliant(false)]        
        protected virtual MappingConfiguration GetMappings(MappingConfiguration mappingConfiguration)
        {
            foreach (var assembly in GetMappingsAssemblies().Where(assembly => !assembly.IsDynamic))
            {
                mappingConfiguration.FluentMappings.AddFromAssembly(assembly);
            }

            mappingConfiguration.AutoMappings.Add(AutoMap.Assemblies((GetAutoMappingAssemblies().ToArray())));

            return mappingConfiguration;
        }

        protected virtual IEnumerable<Assembly> GetAutoMappingAssemblies()
        {
            return new Assembly[] {};
        }

        /// <summary>
        /// Gets a collection of all assemblies that mappings should be loaded from, for <see cref="GetMappings"/>.
        /// </summary>
        /// <returns></returns>
        protected virtual IEnumerable<Assembly> GetMappingsAssemblies()
        {
            return new[]{ GetType().Assembly };
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
            if( SessionFactory == null) throw new HibernateDataServicesProviderException("The session factory was not configured. Either pass it into the constructor, or call Initialize() before trying to get a Unit of Work.");
            return new HibernateUnitOfWorkFactory(SessionFactory);
        }

        /// <summary>
        /// Gets the current session.
        /// </summary>
        /// <returns></returns>
        public ISession GetCurrentSession()
        {
            return SessionFactory.GetCurrentSession();
        }
    }
}