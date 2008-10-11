using System;
using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using NUnit.Framework;

namespace Foundation.Tests.Data.NHibernate.UserTypes
{
    [TestFixture]
    public class UriUserTypeTests : DatabaseFixtureBase
    {
        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(DummyTypeWithUriProperty));
        }

        [Test]
        public void Can_write_and_write_Uri_to_database()
        {
            const string url = "http://username:password@subdomain.domain.com/pathinfo1/pathinfo2?queryString1=value1&queryString2=value2";

            var dummy = new DummyTypeWithUriProperty {Url = new Uri(url)};
            
            ActiveRecordMediator<DummyTypeWithUriProperty>.Save(dummy);

            var result = ActiveRecordMediator<DummyTypeWithUriProperty>.FindByPrimaryKey(dummy.Id);

            Assert.AreEqual(dummy, result);
            Assert.AreEqual(dummy.Url, result.Url);
            Assert.AreEqual(url, result.Url.ToString());
        }
    }

    [ActiveRecord]
    internal class DummyTypeWithUriProperty
    {
        [PrimaryKey]
        public int Id { get; set; }

        [Property(ColumnType = "Foundation.Data.Hibernate.UserTypes.UriUserType,Foundation")]
        public Uri Url { get; set; }
    }
}
