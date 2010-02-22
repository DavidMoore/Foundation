using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;

namespace Foundation
{
    public class NamedPaginatedList<T> : PaginatedList<T>
    {
        [SuppressMessage("Microsoft.Design", "CA1006:DoNotNestGenericTypesInMemberSignatures")]
        public NamedPaginatedList(ICollection<T> source, int page, int pageSize, Func<IEnumerable<T>, string> getPageNameFunction) : base(source, page, pageSize)
        {
            Paginate(source, getPageNameFunction);
        }

        void Paginate(ICollection<T> source, Func<IEnumerable<T>, string> function)
        {
            if (source.Count < RecordCount) throw new InvalidOperationException("You must load all results to do custom pagination names");

            PageNames.Clear();

            for (var i = 0; i < PageCount; i++)
            {
                PageNames.Add(function( source.Skip( i * PageSize ).Take(PageSize) ));
            }
        }
    }
}