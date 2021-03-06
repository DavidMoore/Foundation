﻿using System;
using Foundation.Services;
using Foundation.Services.Unity;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Services.Unity
{
    /// <summary>
    /// Summary description for UnityServiceManagerAdapterTests
    /// </summary>
    [TestClass]
    public class UnityServiceManagerAdapterTests
    {
        [TestMethod]
        public void ChildContainer_resolves_to_parent_if_not_found_in_self()
        {
            IServiceManager parent = new UnityServiceManagerAdapter();
            var child = parent.CreateChildContainer();

            // Add a component to the parent
            parent.AddService<IDummyService, DummyServiceImpl>();

            // Resolve from the child
            var result = child.GetService<IDummyService>();

            Assert.IsInstanceOfType(result, typeof(IDummyService));
        }

        [TestMethod]
        public void ChildContainer_returns_self_if_resolving_IServiceManager()
        {
            IServiceManager parent = new UnityServiceManagerAdapter();
            var child = parent.CreateChildContainer();

            Assert.AreEqual( child, child.GetService<IServiceManager>());
        }

        [TestMethod]
        public void Registering_in_child_container_does_not_register_in_parent()
        {
            IServiceManager parent = new UnityServiceManagerAdapter();
            var child = parent.CreateChildContainer();

            // Add a component to the child
            child.AddService<IDummyService, DummyServiceImpl>();

            // Resolve from the child
            var result = child.GetService<IDummyService>();
            Assert.IsInstanceOfType(result, typeof(IDummyService));

            // Resolve from the parent
            var exceptionThrown = false;
            try
            {
                parent.GetService<IDummyService>();
            }
            catch (ServiceResolutionFailedException)
            {
                exceptionThrown = true;
            }
            Assert.IsTrue(exceptionThrown);
        }

        [TestMethod, ExpectedException(typeof(ServiceResolutionFailedException))]
        public void Container_throws_exception_if_resolution_fails()
        {
            IServiceManager container = new UnityServiceManagerAdapter();
            var result = container.GetService<IDummyService>();
        }

        public class DummyServiceImpl : IDummyService { }

        public interface IDummyService { }
    }
}