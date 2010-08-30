using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Foundation.Data.ActiveRecord;
using Foundation.Services.Repository;
using Foundation.Tests.Data.Hierarchy;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Foundation.Tests.Data.ActiveRecord
{
    [TestClass]
    public class ActiveRecordRepositoryTests
    {
        [TestMethod]
        public void TestMethod1()
        {
            IRepository<Category> repository = new ActiveRecordRepository<Category>();
        }
    }
}
