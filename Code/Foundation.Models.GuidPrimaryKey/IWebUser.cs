using System;
using Foundation.Services.Security;

namespace Foundation.Models.GuidPrimaryKey
{
    public interface IWebUser : IWebUser<Guid>, INamedEntity {}
}