namespace Foundation.Services.Security
{
    public interface IEntityWithUniqueName : IEntity
    {
        /// <summary>
        /// Unique name
        /// </summary>
        string Name { get; set; }
    }
}