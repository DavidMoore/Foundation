using System;
using System.Collections.Generic;

namespace Foundation
{
    public static class ArrayExtensionMethods
    {
        public static T[] Concat<T>(this Array array, T[] concat)
        {
            if (concat == null || concat.Length == 0) return array as T[];

            var list = new List<T>( (T[])array );

            list.AddRange( concat );

            return list.ToArray();
        }
    }
}
