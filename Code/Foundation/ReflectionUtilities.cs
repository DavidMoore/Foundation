using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;

namespace Foundation
{
    /// <summary>
    /// Reflection-related utilties
    /// </summary>
    public static class ReflectionUtilities
    {
        /// <summary>
        /// Gets all the properties from the object's type with the specified attribute
        /// </summary>
        public static IEnumerable<PropertyInfo> GetPropertiesWithAttribute(Type type, Type attribute)
        {
            if (type == null) throw new ArgumentNullException("type");
            return type.GetProperties().Where(info => info.GetCustomAttributes(attribute, true).Length > 0);
        }

        /// <summary>
        /// Returns true if the specified member info is annotated with the specified attribute
        /// </summary>
        /// <param name="memberInfo"></param>
        /// <param name="attribute"></param>
        /// <returns></returns>
        public static bool HasAttribute(MemberInfo memberInfo, Type attribute)
        {
            if (memberInfo == null) throw new ArgumentNullException("memberInfo");
            return memberInfo.GetCustomAttributes(attribute, true).Length > 0;
        }

        /// <summary>
        /// Returns true if the passed type implements the specified interface
        /// </summary>
        /// <param name="type"></param>
        /// <param name="desiredInterface"></param>
        /// <returns></returns>
        public static bool Implements(Type type, Type desiredInterface)
        {
            if (type == null) throw new ArgumentNullException("type");
            if (desiredInterface == null) throw new ArgumentNullException("desiredInterface");
            return !type.IsInterface && !type.IsAbstract && desiredInterface.IsAssignableFrom(type);
        }

        /// <summary>
        /// Returns true if the passed type implements the specified interface
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public static bool Implements<T>(Type type)
        {
            return Implements(type, typeof (T));
        }

        /// <summary>
        /// Returns true if the specified class member is annotated with any of the specified attributes
        /// </summary>
        /// <param name="memberInfo">The class member to look for an attribute on</param>
        /// <param name="attributes">The attribute to look for</param>
        /// <returns></returns>
        public static bool HasAttribute(MemberInfo memberInfo, params Type[] attributes)
        {
            if (memberInfo == null) throw new ArgumentNullException("memberInfo");

            var actualAttributes = memberInfo.GetCustomAttributes(true).ToList();

            var actualTypes = actualAttributes.ConvertAll(attribute => attribute.GetType());

            var lookingFor = attributes.ToList();

            return lookingFor.Any(actualTypes.Contains);
        }
        
        /// <summary>
        /// Gets an attribute from the passed object
        /// </summary>
        /// <typeparam name="T">The type of the attribute to look for on the object</typeparam>
        /// <param name="value">The object to look for the attribute on</param>
        /// <returns>The attribute if found, otherwise null </returns>
        public static T GetAttribute<T>(object value) where T : Attribute
        {
            var attributes = GetAttributes<T>(value);
            if (attributes.Count() > 1) throw new InvalidOperationException(
                 string.Format(CultureInfo.CurrentCulture, "The object {0} has more than one instance of the {1} attribute, but you're asking for 1 instance. Either use GetAttributes instead, or ensure {1} is only allowed one instance on a member.", value, typeof(T)));
            return attributes.SingleOrDefault();
        }

        /// <summary>
        /// Gets all instances of an attribute from the passed object
        /// </summary>
        /// <typeparam name="T">The type of the attribute to look for on the object</typeparam>
        /// <param name="value">The object to look for the attribute on</param>
        /// <returns>The attribute(s) if found, otherwise null</returns>
        public static IEnumerable<T> GetAttributes<T>(object value) where T : Attribute
        {
            if (value == null) throw new ArgumentNullException("value");

            // Get the object Type. If the passed value is already a type, we don't have to do anything.
            var objectValueAsCustomAttributeProvider = value as ICustomAttributeProvider;
            var customAttributeProvider = objectValueAsCustomAttributeProvider ?? value.GetType();

            var attributes = customAttributeProvider.GetCustomAttributes(typeof(T), true);

            return attributes.Cast<T>();
        }

        /// <summary>
        /// Loads an assembly file, ignoring any <see cref="BadImageFormatException"/>
        /// </summary>
        /// <param name="fileName">The path to the assembly file</param>
        /// <returns>The loaded assembly, or null if <see cref="BadImageFormatException"/> was encountered</returns>
        public static Assembly LoadAssembly(string fileName)
        {
            return LoadAssembly(fileName, null);
        }

        /// <summary>
        /// Loads an assembly file, ignoring any <see cref="BadImageFormatException"/>
        /// </summary>
        /// <param name="fileName">The path to the assembly file</param>
        /// <param name="logger">A delegate to call with a logging message if <see cref="BadImageFormatException"/> is encountered. Can be null.</param>
        /// <returns>The loaded assembly, or null if <see cref="BadImageFormatException"/> was encountered</returns>
        [SuppressMessage("Microsoft.Reliability", "CA2001:AvoidCallingProblematicMethods", MessageId = "System.Reflection.Assembly.LoadFile")]
        public static Assembly LoadAssembly(string fileName, Action<string> logger)
        {
            if (string.IsNullOrEmpty(fileName)) throw new ArgumentException("Null or empty filename!", fileName);

            try
            {
                return Assembly.LoadFile(fileName);
            }
            catch (BadImageFormatException bife)
            {
                if (logger != null)
                {
                    var message =
                   string.Format(CultureInfo.CurrentCulture,
                       "Got a BadImageFormatException with message \"{0}\" when trying to load \"{1}\" as an assembly. If it's not a .NET assembly, you can safely ignore this.",
                       bife.Message, fileName);
                    logger(message);
                }

                return null;
            }
        }

        /// <summary>
        /// Loads an assembly file, ignoring any <see cref="BadImageFormatException"/>
        /// </summary>
        /// <param name="file">The assembly file</param>
        /// <returns>The loaded assembly, or null if <see cref="BadImageFormatException"/> was encountered</returns>
        /// <exception cref="ArgumentNullException"> if <paramref name="file"/> is <code>null</code></exception>
        public static Assembly LoadAssembly(FileSystemInfo file)
        {
            if (file == null) throw new ArgumentNullException("file");
            return LoadAssembly(file.FullName);
        }

        /// <summary>
        /// Gets the product name for the passed <see cref="Assembly"/>, by looking at the
        /// value of the Product Name assembly attribute (<see cref="AssemblyProductAttribute"/>)
        /// </summary>
        /// <param name="assembly">The assembly to find the product name for</param>
        /// <returns></returns>
        /// <exception cref="ArgumentNullException"> if <paramref name="assembly"/> is <code>null</code></exception>
        public static string GetProductName(Assembly assembly)
        {
            if (assembly == null) throw new ArgumentNullException("assembly");

            var productAttribute = (AssemblyProductAttribute)Assembly.GetExecutingAssembly()
                .GetCustomAttributes(typeof(AssemblyProductAttribute), true)
                .SingleOrDefault();

            if (productAttribute == null) throw new InvalidOperationException(
                string.Format(CultureInfo.CurrentCulture, "When trying to get the Product name from the assembly {0}, there was no AssemblyProductAttribute found on the assembly!", assembly));

            return productAttribute.Product;
        }
    }
}