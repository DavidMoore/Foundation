using System;

using Foundation.Models.GuidPrimaryKey;

namespace Foundation.Tests.Data.Hibernate.UserTypes
{
    public class CustomGuidCombGeneratorEntity : INamedEntity
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="T:System.Object"/> class.
        /// </summary>
        public CustomGuidCombGeneratorEntity()
        {
            Id = Guid.NewGuid();
        }

        public virtual Guid Id { get; set; }

        public virtual string Name { get; set; }
    }
}