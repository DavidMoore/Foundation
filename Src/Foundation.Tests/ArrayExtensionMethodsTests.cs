using System;
using NUnit.Framework;

namespace Foundation.Tests
{
    [TestFixture]
    public class ArrayExtensionMethodsTests
    {
        [Test]
        public void Append()
        {
            var array1 = new[] {"a", "b", "c"};
            var array2 = new[] {"d", "e", "f"};

            Assert.AreEqual(3, array1.Length);
            Assert.AreEqual(3, array2.Length);

            array1 = array1.Concat(array2);

            Assert.AreEqual(6, array1.Length);
            Assert.AreEqual(3, array2.Length);

            Assert.AreEqual("a", array1[0]);
            Assert.AreEqual("b", array1[1]);
            Assert.AreEqual("c", array1[2]);
            Assert.AreEqual("d", array1[3]);
            Assert.AreEqual("e", array1[4]);
            Assert.AreEqual("f", array1[5]);
        }
    }
}