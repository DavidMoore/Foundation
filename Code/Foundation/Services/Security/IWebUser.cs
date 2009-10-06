namespace Foundation.Services.Security
{
    public interface IWebUser : IUser
    {
        /// <summary>
        /// Unique email address
        /// </summary>
        string Email { get; set; }
    }
}