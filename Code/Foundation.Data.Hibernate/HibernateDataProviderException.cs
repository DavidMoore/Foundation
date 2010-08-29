namespace Foundation.Data.Hibernate
{
    /// <summary>
    /// An error has occurred when trying to use the NHibernate data provider.
    /// </summary>
    public class HibernateDataProviderException : BaseException
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="HibernateDataProviderException"/> class.
        /// </summary>
        /// <param name="message">The formattable error message.</param>
        /// <param name="args">The args to format the <paramref name="message"/> with.</param>
        public HibernateDataProviderException(string message, params object[] args) : base(message, args) {}
    }
}