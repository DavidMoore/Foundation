namespace Foundation.Services.Repository
{
    /// <summary>
    /// Adds some helpful extensions to the <see cref="IRepository{T}"/> API.
    /// </summary>
    public static class RepositoryExtensions
    {
        /// <summary>
        /// Saves the specified instances.
        /// </summary>
        /// <param name="repository">The repository.</param>
        /// <param name="instances">The instances.</param>
        /// <returns></returns>
        public static void Save<T>(this IRepository<T> repository, params T[] instances) where T : class, new()
        {
            foreach (var instance in instances) repository.Save(instance);
        }
    }
}
