using System.Collections.Generic;

namespace Foundation
{
    /// <summary>
    /// Generic interface for <see cref="IPaginatedCollection"/>.
    /// </summary>
    /// <typeparam name="T">The type of the objects in the collection.</typeparam>
    public interface IPaginatedCollection<T> : IPaginatedCollection, IList<T> {}
}