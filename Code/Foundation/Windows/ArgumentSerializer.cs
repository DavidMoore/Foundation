using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using Foundation.ExtensionMethods;

namespace Foundation.Windows
{
    public class ArgumentSerializer
    {
        public T Deserialize<T>(string args) where T : new()
        {
            var result = new T();
            var type = result.GetType();

            // Get a dictionary of argument info we can use to match
            // with the type we want to deserialize to.
            var argInfo = ArgumentInfoParser.Parse(args);

            foreach (var argumentInfo in argInfo)
            {
                // Is there a member in the type named after this argument?
                KeyValuePair<string, ArgumentInfo> argInfoPair = argumentInfo;

                var property = type.GetProperties().Where(info => info.Name.Equals(argInfoPair.Key, StringComparison.CurrentCultureIgnoreCase)).SingleOrDefault();

                if (property == null) continue;

                if (property.PropertyType == typeof(bool))
                {
                    var value = argInfoPair.Value.Value.IsNullOrEmpty() ? true : bool.Parse(argInfoPair.Value.Value);
                    property.SetValue(result, value, null);
                }
                else
                {
                    property.SetValue(result, argInfoPair.Value.Value, null);
                }
            }

            return result;
        }
    }
}