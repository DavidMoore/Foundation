using System;
using System.ComponentModel;
using System.Reflection;

namespace Foundation.Build.Activities
{
    [AttributeUsage(AttributeTargets.All)]
    internal sealed class LocalizedCategoryAttribute : CategoryAttribute
    {
        private const BindingFlags bindingFlags = (BindingFlags.Public | BindingFlags.Static);
        private readonly Type type;

        public LocalizedCategoryAttribute(Type type, string category) : base(category)
        {
            this.type = type;
        }

        protected override string GetLocalizedString(string value)
        {
            return (string) type.GetMethod("Get", bindingFlags).Invoke(null, new object[] {value});
        }
    }
}