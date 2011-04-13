using Foundation.Services;

namespace Foundation.Build.VersionControl
{
    public interface IVersionControlProvider
    {
        /// <summary>
        /// Executes a version control operation with the specified arguments.
        /// </summary>
        /// <param name="arguments">The arguments.</param>
        /// <returns>Execution results.</returns>
        IServiceResult Execute(VersionControlArguments arguments);
    }
}