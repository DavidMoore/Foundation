using System;
using System.Collections.Generic;
using System.Linq;
using Castle.ActiveRecord;
using Castle.ActiveRecord.Framework;
using Castle.ActiveRecord.Framework.Config;
using Foundation.Data.Hibernate;
using NHibernate.Dialect;
using NHibernate.Driver;
using NUnit.Framework;

namespace Foundation.Data.ActiveRecord
{
    public class DatabaseFixtureBase
    {
        IEnumerable<Type> typesToRegister;
        protected virtual IEnumerable<Type> TypesToRegister
        {
            get { return typesToRegister; }
            set { typesToRegister = value; }
        }

        protected SessionScope Scope { get; set;}

        /// <summary>
        /// Initializes a new instance of the <see cref="T:System.Object"/> class.
        /// </summary>
        public DatabaseFixtureBase()
        {
            typesToRegister =  Enumerable.Empty<Type>();
        }

        public virtual void RegisterTypes()
        {
            ActiveRecordStarter.RegisterTypes();
        }

        public virtual void RegisterTypes(params Type[] types)
        {
            ActiveRecordStarter.RegisterTypes(types);
        }

        [SetUp]
        public virtual void Setup()
        {
            ActiveRecordStarter.ResetInitializationFlag();
            ActiveRecordStarter.Initialize(GetConfigSource());
            RegisterTypes();
            ActiveRecordStarter.CreateSchema();
            Scope = new SessionScope();
        }

        [TearDown]
        public virtual void Teardown()
        {
            ThrowException.IfNull<FoundationException>(Scope,
                "Scope is null. Did you override Setup in the fixture and forget to call base.Setup()?");
            Scope.Dispose();
            ActiveRecordStarter.DropSchema();
        }

        public static IConfigurationSource GetConfigSource()
        {
            return GetSqliteMemoryConfigSource();
        }

        public static IConfigurationSource GetSqliteMemoryConfigSource()
        {
            const string connectionString = "Data Source=:memory:;Version=3;New=True;";
            var props = new Dictionary<string, string>();
            props["connection.connection_string"] = connectionString;
            props["dialect"] = typeof(SQLiteDialect).AssemblyQualifiedName;
            props["show_sql"] = true.ToString();
            props["connection.driver_class"] = typeof(SQLite20Driver).AssemblyQualifiedName;
            props["connection.release_mode"] = "on_close";
            props["connection.provider"] = typeof(SingletonConnectionProvider).AssemblyQualifiedName;
            props["proxyfactory.factory_class"] = typeof(NHibernate.ByteCode.Castle.ProxyFactoryFactory).AssemblyQualifiedName;
            var source = InPlaceConfigurationSource.Build(DatabaseType.SQLite, connectionString);
            source.Add(typeof(ActiveRecordBase), props);
            return source;
        }

        public static void InitializeActiveRecord(IConfigurationSource source, params Type[] types)
        {
            ActiveRecordStarter.ResetInitializationFlag();
            ActiveRecordStarter.Initialize(source);
            ActiveRecordStarter.RegisterTypes(types);
            ActiveRecordStarter.CreateSchema();
        }

        public static void InitializeActiveRecord(params Type[] types)
        {
            ActiveRecordStarter.ResetInitializationFlag();
            ActiveRecordStarter.Initialize(GetSqliteMemoryConfigSource());
            ActiveRecordStarter.RegisterTypes(types);
            ActiveRecordStarter.CreateSchema();
        }
    }
}