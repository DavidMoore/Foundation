namespace Foundation.Services.Repository
{
    /// <summary>
    /// Provides a method for directly executing generic or native SQL against an underlying SQL store
    /// </summary>
    public interface ISqlRepository
    {
        /// <summary>
        /// Executes some arbitrary generic or native SQL against the underlying SQL store
        /// </summary>
        /// <param name="sql"></param>
        void ExecuteSql(string sql);
    }
}