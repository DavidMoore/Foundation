using Foundation.Services.Security;

namespace Foundation.Data.Security
{
    /// <summary>
    /// Group with 1 or more associated users
    /// </summary>
    public class UserGroup : IGroup<int>
    {
        /// <summary>
        /// Unique identifier for the group
        /// </summary>
        public int Id { get; set; }

        /// <summary>
        /// Name of the group
        /// </summary>
        public string Name { get; set; }
    }
}