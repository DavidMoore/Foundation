using System.Collections.Generic;

namespace Foundation
{
    public interface IPaginatedList<T> : IPaginatedList, IList<T> {}
}