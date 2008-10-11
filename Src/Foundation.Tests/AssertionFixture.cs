using System;
using NUnit.Framework;

namespace Foundation.Tests
{
    [TestFixture]
    public class AssertionFixture
    {
        [Test, ExpectedException(typeof(FoundationException), "Expected exception message")]
        public void Is_false_assertion_throws_invalid_operation_exception_when_false()
        {
            ThrowException.IfTrue(true, "Expected exception message");
        }

        [Test, ExpectedException(typeof(FoundationException), "Expected exception message")]
        public void Is_true_assertion_throws_invalid_operation_exception_when_false()
        {
            ThrowException.IfFalse(false, "Expected exception message");
        }

        [Test, ExpectedException(typeof(ArgumentNullException))]
        public void Throws_ArgumentNullException_on_null_argument_check()
        {
            string test = null;
            ThrowException.IfArgumentIsNull("test", test);
        }

        [Test, ExpectedException(typeof(ArgumentNullException))]
        public void Throws_ArgumentNullException_on_not_null_or_empty_argument_check_when_argument_is_null()
        {
            ThrowException.IfArgumentIsNullOrEmpty("param1", null);
        }

        [Test, ExpectedException(typeof(ArgumentException))]
        public void Throws_ArgumentException_on_not_null_or_empty_argument_check_when_argument_is_empty_string()
        {
            ThrowException.IfArgumentIsNullOrEmpty("param1", string.Empty);
        }

        [Test, ExpectedException(typeof(ArgumentException))]
        public void Throws_ArgumentException_on_not_null_or_empty_argument_check_when_argument_is_whitespace_string()
        {
            ThrowException.IfArgumentIsNullOrEmpty("param1", "\t  ");
        }
    }
}