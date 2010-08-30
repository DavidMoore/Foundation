namespace Foundation.Services.Security
{
    public interface IWebUser<T> : IUser<T>
    {
        /// <summary>
        /// Unique email address
        /// </summary>
        string Email { get; set; }
    }
}