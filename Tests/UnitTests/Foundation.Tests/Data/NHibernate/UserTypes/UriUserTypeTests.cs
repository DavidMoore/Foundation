using System;
using Castle.ActiveRecord;
using Foundation.Data.ActiveRecord;
using Foundation.Data.Hibernate.UserTypes;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Property = Castle.ActiveRecord.PropertyAttribute;

namespace Foundation.Tests.Data.NHibernate.UserTypes
{
    [TestClass]
    public class UriUserTypeTests : DatabaseFixture
    {
        public override void RegisterTypes()
        {
            base.RegisterTypes();
            RegisterTypes(typeof(DummyTypeWithUriProperty));
        }

        [TestMethod]
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

        [Castle.ActiveRecord.Property(ColumnType = UriUserType.TypeName)]
        public Uri Url { get; set; }
    }
}