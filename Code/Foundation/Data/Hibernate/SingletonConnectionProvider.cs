using System.Data;
using NHibernate.Connection;

namespace Foundation.Data.Hibernate
{
    /// <summary>
    /// Used to create a connection provider that uses a singleton connection instance
    /// which is never closed. This is intended to be used only for in-memory SQLite databases
    /// because the schema is dropped when the connection is closed.
    /// </summary>
    public class SingletonConnectionProvider : DriverConnectionProvider
    {
        /// <summary>
        /// The singleton connection
        /// </summary>
        public static IDbConnection Connection { get; private set; }

        /// <summary>
        /// Acquires the connection to the database
        /// </summary>
        /// <returns></returns>
        public override IDbConnection GetConnection()
        {
            if( Connection == null ) Connection = base.GetConnection();
            return Connection;
        }

        /// <summary>
        /// In the singleton provider, this doesn't actually close the connection.
        /// </summary>
        /// <param name="conn"></param>
        public override void CloseConnection(IDbConnection conn) {}
    }
}