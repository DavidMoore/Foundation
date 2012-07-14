using System;
using System.ComponentModel;
using System.Reflection;

namespace Foundation.Build.Activities
{
    [AttributeUsage(AttributeTargets.All)]
    internal sealed class LocalizedDescriptionAttribute : DescriptionAttribute
    {
        private const BindingFlags bindingFlags = (BindingFlags.Public | BindingFlags.Static);

        public LocalizedDescriptionAttribute(Type type, string description) : base((string)type.GetMethod(description, bindingFlags).Invoke(null, null)) { }
    }
}