using System;
using Foundation.Build.VersionControl;
using Foundation.Services;
using Foundation.Tests.TestHelpers;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Build.VersionControl
{
    [TestClass]
    public class BaseVersionControlProviderTests
    {
        class StubBaseVersionControlProvider : BaseVersionControlProvider
        {
            /// <summary>
            /// Executes a get operation.
            /// </summary>
            /// <param name="arguments">The arguments.</param>
            /// <returns></returns>
            protected override IServiceResult ExecuteGet(VersionControlArguments arguments)
            {
                throw new NotImplementedException();
            }
        }


        [TestMethod, ExpectedException(typeof(ArgumentNullException))]
        public void Execute_throws_ArgumentNullException_if_args_are_null()
        {
            new StubBaseVersionControlProvider().Execute(null);
        }


        [TestMethod]
        public void Execute_throws_ArgumentException_if_Operation_is_None()
        {
            var provider = new StubBaseVersionControlProvider();
            var args = new VersionControlArguments
            {
                Server = "Server",
                Operation = VersionControlOperation.None
            };

            AssertException.Throws<ArgumentException>(
                "You must specify a valid source control operation for the VersionControlArguments (the Operation property is set to None)\r\nParameter name: arguments",
                () => provider.Execute(args));
        }

        [TestMethod]
        public void Server_is_required()
        {
            var provider = new StubBaseVersionControlProvider();
            var args = new VersionControlArguments();

            AssertException.Throws<ArgumentException>(
                "You must specify a Server\r\nParameter name: arguments",
                () => provider.ValidateArguments(args));
        }
    }
}