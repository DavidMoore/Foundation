using System;
using System.Activities;
using System.ComponentModel;
using System.Drawing;
using Foundation.Build.Activities.Properties;
using Microsoft.TeamFoundation.Build.Client;
using Microsoft.TeamFoundation.Build.Workflow.Activities;
using Microsoft.TeamFoundation.Build.Workflow.Design;

namespace Foundation.Build.Activities
{
    /// <summary>
    /// Returns a class with properties containing information on the build version.
    /// </summary>
    [BuildCategory]
    [BuildActivity(HostEnvironmentOption.All)]
    [Designer(typeof (TeamBuildBaseActivityDesigner))]
    [ToolboxBitmap(typeof (TeamBuildBaseActivityDesigner), "DefaultBuildIcon.png")]
    public sealed class UpdateBuildVersionInfo : CodeActivity<BuildVersionInfo>
    {
        readonly IBuildQueryProvider queryProvider;

        /// <summary>
        /// Initializes a new instance of the <see cref="UpdateBuildVersionInfo"/> class.
        /// </summary>
        public UpdateBuildVersionInfo() : this(new BuildQueryProvider()) {}

        /// <summary>
        /// Initializes a new instance of the <see cref="UpdateBuildVersionInfo"/> class.
        /// </summary>
        /// <param name="queryProvider">The query provider.</param>
        public UpdateBuildVersionInfo(IBuildQueryProvider queryProvider)
        {
            this.queryProvider = queryProvider;
            MajorVersion = 1;
        }

        [RequiredArgument, Browsable(true), DefaultValue((string) null)]
        [LocalizedCategory(typeof (Resources), "ActivityCategoryVersioning")]
        [LocalizedDescription(typeof (Resources), "ProductNameDescription")]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public string ProductName { get; set; }

        [RequiredArgument, Browsable(true), DefaultValue((string) null)]
        [LocalizedCategory(typeof (Resources), "ActivityCategoryVersioning")]
        [LocalizedDescription(typeof (Resources), "BuildQualityDescription")]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public string BuildQuality { get; set; }

        [RequiredArgument, Browsable(true), DefaultValue(1)]
        [LocalizedCategory(typeof (Resources), "ActivityCategoryVersioning")]
        [LocalizedDescription(typeof (Resources), "MajorVersionDescription")]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public int MajorVersion { get; set; }

        [RequiredArgument, Browsable(true), DefaultValue(0)]
        [LocalizedCategory(typeof (Resources), "ActivityCategoryVersioning")]
        [LocalizedDescription(typeof (Resources), "MinorVersionDescription")]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public int MinorVersion { get; set; }

        /// <summary>
        /// Caches the metadata.
        /// </summary>
        /// <param name="metadata">The metadata.</param>
        protected override void CacheMetadata(CodeActivityMetadata metadata)
        {
            base.CacheMetadata(metadata);
            metadata.RequireExtension<IBuildDetail>();
        }

        protected override BuildVersionInfo Execute(CodeActivityContext context)
        {
            DateTime now = DateTime.Now;

            var buildDetail = context.GetExtension<IBuildDetail>();

            var result = new BuildVersionInfo
                         {
                             ProductName = ProductName,
                             BuildQuality = BuildQuality,
                             Major = MajorVersion,
                             Minor = MinorVersion,
                             Build = Convert.ToInt32((now.Year - 2010) + now.ToString("MMdd"))
                         };

            result.Revision = GetRevision(result, buildDetail);

            return result;
        }

        /// <summary>
        /// Gets the next available revision number for the current build.
        /// </summary>
        /// <param name="versionInfo">The version info.</param>
        /// <param name="buildDetail">The build detail.</param>
        /// <returns></returns>
        int GetRevision(BuildVersionInfo versionInfo, IBuildDetail buildDetail)
        {
            // Get the highest existing build number
            return queryProvider.GetHighestExistingBuildNumber(versionInfo, buildDetail) + 1;
        }
    }
}