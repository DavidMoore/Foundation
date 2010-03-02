using System.Collections.Generic;

namespace Foundation
{
    public interface IPaginatedCollection<T> : IPaginatedCollection, IList<T> {}
}