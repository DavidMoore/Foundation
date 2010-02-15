using System;
using Microsoft.Practices.ObjectBuilder2;
using Microsoft.Practices.Unity;

namespace Foundation.Services.Unity
{
    /// <summary>
    /// Implements a <see cref="UnityContainerExtension"/> that checks if a specific type was registered with the container.
    /// </summary>
    [CLSCompliant(false)]
    public class UnityIsTypeRegisteredExtension : UnityContainerExtension
    {
        /// <summary>
        /// Evaluates if a specified type was registered in the container.
        /// </summary>
        /// <param name="container">The container to check if the type was registered in.</param>
        /// <param name="type">The type to check if it was registered.</param>
        /// <returns><see langword="true" /> if the <paramref name="type"/> was registered with the container.</returns>
        /// <remarks>
        /// In order to use this extension, you must first call <see cref="IUnityContainer.AddNewExtension{TExtension}"/> 
        /// and specify <see cref="UnityContainerExtension"/> as the extension type.
        /// </remarks>
        public static bool IsTypeRegistered(IUnityContainer container, Type type)
        {
            var extension = container.Configure<UnityIsTypeRegisteredExtension>();

            // The extension wasn't registered in the container, so we can't determine
            // if the type is registered or not.
            if (extension == null) return false;

            return extension.Context.Policies.Get<IBuildKeyMappingPolicy>(new NamedTypeBuildKey(type)) != null;
        }

        /// <summary>
        /// Initialize by trying to get the logger
        /// </summary>
        protected override void Initialize() {}
    }
}