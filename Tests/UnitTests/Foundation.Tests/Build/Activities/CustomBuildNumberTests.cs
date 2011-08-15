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
    public class CustomBuildNumberTests
    {
        private UpdateBuildNumber activity;
        private WorkflowInvoker invoker;
        private Mock<IBuildDefinition> buildDefinition;
        private Mock<IBuildDetail> buildDetail;

        [TestInitialize]
        public void Initialize()
        {
            // Return the highest existing build number as 2
            var buildQueryProvider = new Mock<IBuildQueryProvider>();
            buildQueryProvider.Setup(provider => provider.GetHighestExistingBuildNumber(It.IsAny<string>(), It.IsAny<IBuildDetail>(), It.IsAny<int>(), It.IsAny<int>())).Returns(2);

            activity = new UpdateBuildNumber(buildQueryProvider.Object);
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
        public void YearsSince2010()
        {
            activity.BuildNumberFormat = "$(YearsSince2010)";
            Assert.AreEqual((DateTime.Now.Year - 2010).ToString(), invoker.Invoke()["Result"]);
        }

        [TestMethod]
        public void Hardcoded_major_and_minor_plus_truncated_date_plus_builds_that_day()
        {
            activity.BuildNumberFormat = "5.1.$(YearsSince2010)$(Month)$(DayOfMonth)$(Rev:.rr)";
            Assert.AreEqual("5.1." + (DateTime.Now.Year - 2010) + DateTime.Now.ToString("MMdd") + ".03", invoker.Invoke()["Result"]);
        }
    }
}
