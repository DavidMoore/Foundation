// -----------------------------------------------------------------------
// <copyright file="IncrementBuildNumber.cs" company="">
// TODO: Update copyright text.
// </copyright>
// -----------------------------------------------------------------------

using System.Activities;
using System.ComponentModel;
using System.Drawing;

using Foundation.Build.Activities.Properties;

using Microsoft.TeamFoundation.Build.Client;
using Microsoft.TeamFoundation.Build.Workflow.Activities;
using Microsoft.TeamFoundation.Build.Workflow.Design;

namespace Foundation.Build.Activities
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;

    [BuildCategory]
    [BuildActivity(HostEnvironmentOption.All)]
    [Designer(typeof(TeamBuildBaseActivityDesigner))]
    [ToolboxBitmap(typeof(TeamBuildBaseActivityDesigner), "DefaultBuildIcon.png")]
    public sealed class IncrementBuildNumber : CodeActivity<string>
    {
        private readonly IBuildQueryProvider queryProvider;

        /// <summary>
        /// Initializes a new instance of the <see cref="UpdateBuildNumber"/> class.
        /// </summary>
        public IncrementBuildNumber() : this(new BuildQueryProvider()) {}

        /// <summary>
        /// Initializes a new instance of the <see cref="UpdateBuildNumber"/> class.
        /// </summary>
        /// <param name="queryProvider">The query provider.</param>
        public IncrementBuildNumber(IBuildQueryProvider queryProvider)
        {
            this.queryProvider = queryProvider;
        }
        
        protected override string Execute(CodeActivityContext context)
        {
            var buildDetail = context.GetExtension<IBuildDetail>();
            int num = 0;
        Label_0021:
            //buildDetail.BuildNumber = FormatStringToBuildNumber(stringVar, buildDetail, null, false);
            try
            {
                buildDetail.Save();
            }
            catch (BuildNumberAlreadyExistsException)
            {
                if (num++ >= 100)
                {
                    throw;
                }
                goto Label_0021;
            }
            return buildDetail.BuildNumber;
        }

        /// <summary>
        /// Caches the metadata.
        /// </summary>
        /// <param name="metadata">The metadata.</param>
        protected override void CacheMetadata(CodeActivityMetadata metadata)
        {
            base.CacheMetadata(metadata);
            metadata.RequireExtension<IBuildDetail>();
        }
    }
}
