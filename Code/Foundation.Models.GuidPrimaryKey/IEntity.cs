using System;

namespace Foundation.Models.GuidPrimaryKey
{
    /// <summary>
    /// An entity that possesses a unique <see cref="IEntity{T}.Id"/>.
    /// </summary>
    public interface IEntity : IEntity<Guid> {}
}