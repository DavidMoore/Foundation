using System;
using System.Collections.Generic;

namespace Foundation
{
    public static class ArrayExtensionMethods
    {
        public static T[] Concat<T>(this Array array, T[] concatArray)
        {
            var castArray = (T[]) array;

            if (concatArray == null || concatArray.Length == 0) return castArray;

            var list = new List<T>(castArray);

            list.AddRange( concatArray );

            return list.ToArray();
        }
    }
}
