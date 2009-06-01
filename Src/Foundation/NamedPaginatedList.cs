using System;
using System.Collections.Generic;
using System.Linq;

namespace Foundation
{
    public class NamedPaginatedList<T> : PaginatedList<T>
    {
        public NamedPaginatedList(ICollection<T> source, int page, int pageSize, Func<IEnumerable<T>, string> getPageNameFunction) : base(source, page, pageSize)
        {
            Paginate(source, getPageNameFunction);
        }

        void Paginate(ICollection<T> source, Func<IEnumerable<T>, string> function)
        {
            PageNames = new List<string>(PageCount);

            if (source.Count < RecordCount) throw new InvalidOperationException("You must load all results to do custom pagination names");

            for (var i = 0; i < PageCount; i++)
            {
                PageNames.Add(function( source.Skip( i * PageSize ).Take(PageSize) ));
            }
        }
    }
}