using System;
using System.Activities;
using System.Collections.Generic;
using Foundation.Build.Activities;
using Microsoft.TeamFoundation.Build.Client;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace Foundation.Tests.Build.Activities
{
    [TestClass]
    public class UpdateBuildVersionInfoTests
    {
        private UpdateBuildVersionInfo activity;
        private WorkflowInvoker invoker;
        private Mock<IBuildDefinition> buildDefinition;
        private Mock<IBuildDetail> buildDetail;

        [TestInitialize]
        public void Initialize()
        {
            // Return the highest existing build number as 2
            var buildQueryProvider = new Mock<IBuildQueryProvider>();
            buildQueryProvider.Setup(provider => provider.GetHighestExistingBuildNumber(It.IsAny<BuildVersionInfo>(), It.IsAny<IBuildDetail>())).Returns(2);

            activity = new UpdateBuildVersionInfo(buildQueryProvider.Object);
            invoker = new WorkflowInvoker(activity);

            buildDefinition = new Mock<IBuildDefinition>();
            buildDefinition.SetupAllProperties();
            buildDefinition.Object.Name = "TestBuild";
            buildDefinition.SetupGet(definition => definition.TeamProject).Returns("TeamProject");

            buildDetail = new Mock<IBuildDetail>();
            buildDetail.SetupAllProperties();
            buildDetail.Setup(detail => detail.BuildDefinition).Returns(buildDefinition.Object);

            var buildDetailSpec = new Mock<IBuildDetailSpec>();
            buildDetailSpec.SetupAllProperties();
            buildDefinition.Setup(def => def.BuildServer.CreateBuildDetailSpec(It.IsAny<IEnumerable<Uri>>())).Returns(buildDetailSpec.Object);

            invoker.Extensions.Add(() => buildDetail.Object);
        }

        [TestMethod]
        public void Hardcoded_major_and_minor_plus_truncated_date_plus_builds_that_day()
        {
            activity.ProductName = "Product Name";
            activity.MajorVersion = 2;
            activity.MinorVersion = 5;
            activity.BuildVersion = 6;
            activity.RevisionVersion = 0;
            activity.BuildQuality = string.Empty;

            var result = invoker.Invoke()["Result"] as BuildVersionInfo;

            Assert.IsNotNull(result);

            Assert.AreEqual(2, result.Major);
            Assert.AreEqual(5, result.Minor);
            Assert.AreEqual(6, result.Build);
            Assert.AreEqual(3, result.Revision);
        }
    }
}