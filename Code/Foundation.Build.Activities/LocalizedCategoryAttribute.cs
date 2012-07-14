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
        readonly string category;

        public LocalizedCategoryAttribute(Type type, string category) : base(category)
        {
            this.type = type;
            this.category = category;
        }

        protected override string GetLocalizedString(string value)
        {
            return (string)type.GetMethod(category, bindingFlags).Invoke(null, null);
        }
    }
}