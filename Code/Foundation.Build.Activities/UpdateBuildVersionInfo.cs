using System;
using System.Activities;
using System.ComponentModel;
using System.Drawing;
using System.Linq.Expressions;

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
        [Category("Versioning")]
        [Description("ProductNameDescription")]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public InArgument<string> ProductName { get; set; }

        [RequiredArgument, Browsable(true), DefaultValue((string) null)]
        [Category("Versioning")]
        [Description("BuildQualityDescription")]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public InArgument<string> BuildQuality { get; set; }

        [RequiredArgument, Browsable(true), DefaultValue(1)]
        [Category("Versioning")]
        [Description("MajorVersionDescription")]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public InArgument<int> MajorVersion { get; set; }

        [RequiredArgument, Browsable(true), DefaultValue(0)]
        [Category("Versioning")]
        [Description("MinorVersionDescription")]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public InArgument<int> MinorVersion { get; set; }

        [RequiredArgument, Browsable(true), DefaultValue(0)]
        [Category("Versioning")]
        [Description("BuildVersionDescription")]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public InArgument<int> BuildVersion { get; set; }

        [Browsable(true), DefaultValue(-1)]
        [Category("Versioning")]
        [Description("RevisionVersionDescription")]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
        public InArgument<int> RevisionVersion { get; set; }

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
                             ProductName =  ProductName.Get(context),
                             BuildQuality = BuildQuality.Get(context),
                             Major = MajorVersion.Get(context),
                             Minor = MinorVersion.Get(context),
                             Build = BuildVersion.Get(context)
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